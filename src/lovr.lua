-- RenderDrawLists is based on love-imgui (https://github.com/slages/love-imgui) Copyright (c) 2016 slages, licensed under the MIT license

local path = (...):gsub("[^%.]*$", "")
local M = require(path .. "master")
local ffi = require("ffi")
local bit = require("bit")
local lovr = require("lovr")

local C = M.C
local L = M.lovr
local _common = M._common

local vertexformat = {
  { "VertexPosition", "vec2" },
  { "VertexUV", "vec2" },
  { "VertexColor", "un8x4" }
}

local lovrkeymap = _common.lovrkeymap
_common.callbacks = setmetatable({},{__mode="v"})

local DefaultVertex2DShader = [[
  vec4 lovrmain() {
    vec2 uv = VertexPosition.xy / Resolution.xy;
    vec4 vcolor = VertexColor.a == 0 ? vec4(0) : vec4(
      gammaToLinear(VertexColor.rgb * VertexColor.a) / VertexColor.a, VertexColor.a
    );
    Color = vcolor * Material.color * PassColor;
    return vec4(uv * 2. - 1., 1., 1.);
  }
]]
local DefaultVertex3DShader = [[
  Constants {
    vec2 UIClipMin;
    vec2 UIClipMax;
  };

  vec4 lovrmain() {
    vec4 vcolor = VertexColor.a == 0 ? vec4(0) : vec4(
      gammaToLinear(VertexColor.rgb * VertexColor.a) / VertexColor.a, VertexColor.a
    );
    Color = vcolor * Material.color * PassColor;
    vec4 vp = vec4(VertexPosition.xyz * vec3(0.01, -0.01, 0.01), 1.0);
    ClipDistance[0] = VertexPosition.x - UIClipMin.x;
    ClipDistance[1] = VertexPosition.y - UIClipMin.y;
    ClipDistance[2] = UIClipMax.x - VertexPosition.x;
    ClipDistance[3] = UIClipMax.y - VertexPosition.y;
    PositionWorld = vec3(Transform * vp);
    Normal = NormalMatrix * vec3(0, 0, 1);
    return ViewProjection * Transform * vp;
  }
]]

local ShaderFlags = {
  glow = false,
  tonemap = false,
  glowTexture = false,
  metalnessTexture = false,
  roughnessTexture = false,
  ambientOcclusion = false,
}

-- auto gc texture if texture not ref by context for user code
local TexturesList = setmetatable({}, { __mode = 'v' })
local TexturesMap = setmetatable({}, { __mode = 'k' })

local Context = {}
Context.__index = Context

function L.NewContext(...)
  return Context.new(...)
end

-- weak ref.
function L.AddTexture(tex)
  local id = TexturesMap[tex]
  if not id then
    id = #TexturesList + 1
    TexturesList[id] = tex
    TexturesMap[tex] = id
  end
  return id
end

function L.RemoveTexture(tex_or_id)
  local id, tex
  if type(tex_or_id) == 'number' then
    id = tex_or_id
    tex = TexturesList[id]
  else
    id = TexturesMap[tex_or_id]
    tex = tex_or_id
  end
  if id then
    TexturesList[id] = nil
    TexturesMap[tex] = nil
  end
end

local ImTextureRef = ffi.typeof("ImTextureRef")
-- create ImTextureRef. lua weak ref
function L.TextureRef(texture)
  assert(type(texture) == 'userdata' and texture:type() == 'Texture', "Argument should be a Lovr texture")
  local id = TexturesMap[texture]
  if not id then
    id = L.AddTexture(texture)
  end
  return ImTextureRef(nil, id)
end

-------------------------

--[[
vertex_shader: nil, 2d, 3d or vertex shader code
opts.ini_path
opts.default_font: { ttf_path, size, conf }, args of AddFontTTF.
opts.default_font: string, ttf_path
opts.default_font: nil, add default font
opts.default_font: false, don't add default font.
opts.display_size { x, y }, default use lovr window size
opts.name: backend name
opts.master_context: for shared font between contexts. ignore default_font if has master_context
opts.vertex_code
opts.pixel_code

NOTE: the master_context must call Render every frame to build font texture
]]
function Context.new(render_mode, opts)
  local self = setmetatable({}, Context)
  opts = opts or {}

  if render_mode == '3d' then
    self.render_mode = render_mode
    self.vertex_code = opts.vertex_code or DefaultVertex3DShader
  elseif render_mode == '2d' then
    self.render_mode = render_mode
    self.vertex_code = opts.vertex_code or DefaultVertex2DShader
  else
    error("Invalid render mode "..tostring(render_mode))
  end

  self.custom_shader = nil
  self.default_shader = lovr.graphics.newShader(self.vertex_code, opts.pixel_code or [[
    vec4 lovrmain() {
      return DefaultColor;
    }
  ]], {
    flags = ShaderFlags,
  })

  local prev_ctx = C.igGetCurrentContext()

  if opts.master_context then
    self.context = C.igCreateContext(opts.master_context.io.Fonts)
    self.fonts = opts.master_context.fonts
    -- ref texture to avoid gc
    self.tex_refs = opts.master_context.tex_refs
  else
    self.context = C.igCreateContext(nil)
    self.fonts = {} -- name_or_path -> ImFont
    self.tex_refs = {}
  end
  ffi.gc(self.context, C.igDestroyContext)
  self.activated = false
  self:Activate()
  self.io = C.igGetIO()
  self.platform_io = C.igGetPlatformIO()

  -- don't add default font again if usage shared font
  if not self.fonts.default then
    if opts.default_font then
      local desc = opts.default_font
      if type(desc) == 'table' then
        self.fonts.default = self:AddFontTTF(desc[1], desc[2], desc[3])
      elseif type(desc) == 'string' then
        self.fonts.default = self:AddFontTTF(desc)
      else
        error("Invalid font desc")
      end
    elseif opts.default_font == nil then
      self.fonts.default = self.io.Fonts:AddFontDefault()
    end
  end

  -- TODO Fix
  -- self.cliboard_callback_get = ffi.cast("const char* (*)(void*)", function(userdata)
  --     return lovr.system.getClipboardText()
  -- end)
  -- self.cliboard_callback_set = ffi.cast("void (*)(void*, const char*)", function(userdata, text)
  --     lovr.system.setClipboardText(ffi.string(text))
  -- end)

  -- self.platform_io.Platform_GetClipboardTextFn = cliboard_callback_get
  -- self.platform_io.Platform_SetClipboardTextFn = cliboard_callback_set

  local dpiscale = lovr.system.getWindowDensity()
  self.io.DisplayFramebufferScale.x, self.io.DisplayFramebufferScale.y = dpiscale, dpiscale

  if opts.display_size then
    self.w, self.h = unpack(opts.display_size)
  else
    self.w, self.h = lovr.system.getWindowDimensions()
  end
  self.io.DisplaySize.x, self.io.DisplaySize.y = self.w, self.h

  if opts.ini_path == false then
    self.io.IniFilename = nil
  else
    lovr.filesystem.createDirectory("/")
    -- save path to avoid gc string
    self.ini_path = opts.ini_path or (lovr.filesystem.getSaveDirectory().."/imgui.ini")
    self.io.IniFilename = self.ini_path
  end

  -- save name to avoid gc string
  self.name = opts.name or ("cimgui-lovr#"..string.format("%p", self))
  self.io.BackendPlatformName = self.name
  self.io.BackendRendererName = self.name

  self.io.BackendFlags = bit.bor(
    -- C.ImGuiBackendFlags_HasMouseCursors,
    -- C.ImGuiBackendFlags_HasSetMousePos,
    C.ImGuiBackendFlags_RendererHasTextures
  )

  self.mesh = nil
  self.mesh_vdata = nil
  self.mesh_idata = nil
  self.max_vertcount = 0
  self.max_vidxcount = 0

  if prev_ctx ~= nil then
    -- must restore ctx to avoid error when create context inside other context
    C.igSetCurrentContext(prev_ctx)
  end

  return self
end

local ActivatedContext
function Context:Activate()
  assert(self.context, "Cannot draw for a invalid context")
  C.igSetCurrentContext(self.context)
  self.activated = true
  if ActivatedContext then
    ActivatedContext.activated = false
  end
  ActivatedContext = self
end

function L.GetCurrentContext()
  return ActivatedContext
end

function Context:SetShader(shader)
  self.custom_shader = shader
end

local FontsData = {}
-- conf.args: { [ImFontConfig_key] = value, ... }
-- conf.monospaced
-- return ImFont*
function Context:AddFontTTF(ttf_path, size, conf, name)
  name = name or ttf_path
  local font = self.fonts[name]
  if font then
    return font
  end

  size = size or 16

  local font_conf = M.ImFontConfig()
  if conf then
    if conf.args then
      for k, v in pairs(conf.args) do
        font_conf[k] = v
      end
    end

    if conf.monospaced then
      font_conf.GlyphMinAdvanceX = size
    end
  end
  font_conf.FontDataOwnedByAtlas = false
  font_conf.Name = #name >= 40 and name:sub(#name - 38) or name

  local font_data = FontsData[ttf_path]
  if not font_data then
    local file = io.open(ttf_path, 'rb')
    assert(file, "Cannot open font file "..tostring(ttf_path))
    font_data = file:read('*a')
    file:close()
    FontsData[ttf_path] = font_data
  end

  font = self.io.Fonts:AddFontFromMemoryTTF(ffi.cast('void*', font_data), #font_data, size, font_conf)
  self.fonts[name] = font
  return font
end

function Context:GetFont(name)
  return self.fonts[name]
end

-- auto activate
function Context:BeginFrame(dt)
  assert(self.context, "Cannot draw for a invalid context")
  -- Preventing incorrect context
  self:Activate()

  self.io.DeltaTime = dt

  -- TODO Fix
  -- if self.io.WantSetMousePos then
  --   love.mouse.setPosition(self.io.MousePos.x, self.io.MousePos.y)
  -- end

  -- TODO Fix
  -- change mouse cursor
  -- if bit.band(io.ConfigFlags, C.ImGuiConfigFlags_NoMouseCursorChange) ~= C.ImGuiConfigFlags_NoMouseCursorChange then
  --     local cursor = cursors[C.igGetMouseCursor()]
  --     if self.io.MouseDrawCursor or not cursor then
  --         love.mouse.setVisible(false) -- Hide OS mouse cursor if ImGui is drawing it
  --     else
  --         love.mouse.setVisible(true)
  --         love.mouse.setCursor(cursor)
  --     end
  -- end
  -- _common.RunShortcuts()

  C.igNewFrame() -- if NewFrame, must call render
end

function Context:Render()
  assert(self.context, "Cannot draw for a invalid context")
  self:Activate()
  C.igRender()
  if self.io.DisplaySize.x == 0 or self.io.DisplaySize.y == 0
    -- or not love.window.isVisible()
  then
    self.draw_data = nil
  else
    self.draw_data = C.igGetDrawData()
    self:_process_draw_texture(self.draw_data)
  end
end

function Context:_process_draw_texture(draw_data)
  if not draw_data.Textures then
    return
  end

  if (draw_data.DisplaySize.x * draw_data.FramebufferScale.x) <= 0
    or (draw_data.DisplaySize.y * draw_data.FramebufferScale.y) <= 0
  then
    return
  end

  for i = 0, draw_data.Textures.Size - 1 do
    local tex_info = draw_data.Textures.Data[i]
    local status = tex_info.Status
    if status ~= C.ImTextureStatus_OK then
      if status == C.ImTextureStatus_WantCreate then
        assert(
          tex_info.Format == C.ImTextureFormat_RGBA32,
          "Only the RGBA32 texture format is supported."
        )

        local imgdata = lovr.data.newImage(tex_info.Width, tex_info.Height, "rgba8")
        ffi.copy(imgdata:getPointer(), tex_info:GetPixels(), tex_info:GetSizeInBytes())
        local tex = lovr.graphics.newTexture(imgdata, {
          usage = { 'transfer', 'sample' }, mipmaps = false, samples = 1
        })
        local id = L.AddTexture(tex)
        tex_info:SetTexID(id)
        tex_info:SetStatus(C.ImTextureStatus_OK)
        self.tex_refs[tex] = true
      elseif status == C.ImTextureStatus_WantUpdates then
        local id = tonumber(tex_info.TexID)
        local tex = TexturesList[id]
        local imgdata = lovr.data.newImage(tex_info.Width, tex_info.Height, 'rgba8')
        ffi.copy(imgdata:getPointer(), tex_info:GetPixels(), tex_info:GetSizeInBytes())
        tex:setPixels(imgdata)
        tex_info:SetStatus(C.ImTextureStatus_OK)
        self.tex_refs[tex] = true
      elseif status == C.ImTextureStatus_WantDestroy and tex_info.UnusedFrames > 0 then
        local id = tonumber(tex_info.TexID)
        if id then
          local tex = TexturesList[id]
          self.tex_refs[tex] = nil
          L.RemoveTexture(id)
          tex:release()
        end
        tex_info:SetTexID(0)
        tex_info:SetStatus(C.ImTextureStatus_Destroyed)
      end
    end
  end
end

-- TODO Fix
-- local cursors = {
--     [C.ImGuiMouseCursor_Arrow] = love.mouse.getSystemCursor("arrow"),
--     [C.ImGuiMouseCursor_TextInput] = love.mouse.getSystemCursor("ibeam"),
--     [C.ImGuiMouseCursor_ResizeAll] = love.mouse.getSystemCursor("sizeall"),
--     [C.ImGuiMouseCursor_ResizeNS] = love.mouse.getSystemCursor("sizens"),
--     [C.ImGuiMouseCursor_ResizeEW] = love.mouse.getSystemCursor("sizewe"),
--     [C.ImGuiMouseCursor_ResizeNESW] = love.mouse.getSystemCursor("sizenesw"),
--     [C.ImGuiMouseCursor_ResizeNWSE] = love.mouse.getSystemCursor("sizenwse"),
--     [C.ImGuiMouseCursor_Hand] = love.mouse.getSystemCursor("hand"),
--     [C.ImGuiMouseCursor_NotAllowed] = love.mouse.getSystemCursor("no"),
-- }

local DefaultDrawOpts = {}
-- tf: mat4 transform, apply transform for 3d draw. draw 2d UI if not tf
-- opts.pivot: { x = x, y = y }
-- opts.viewport_debug
function Context:Draw(pass, tf, opts)
  if not self.draw_data then return end

  pass:push("state")
  pass:push('transform')

  self:SetupDrawEnv(pass)

  local err_cb = function(err)
    print('[ERROR] Failed to draw ui '..self.name..'.\n'..err..'\n'..debug.traceback())
  end
  local ok = xpcall(self._DrawImpl, err_cb, self, pass, tf, opts)

  pass:setScissor()
  pass:pop("transform")
  pass:pop('state')
  if not ok then
    error("Failed to draw ui "..self.name)
  end
end

function Context:SetupDrawEnv(pass)
  pass:setFaceCull('none')
  pass:setViewCull(false)
  pass:setDepthWrite(false)
  pass:setMaterial()
  pass:setBlendMode('alpha', 'alphamultiply')
  pass:setSampler('linear')
end

function Context:_DrawImpl(pass, tf, opts)
  opts = opts or DefaultDrawOpts
  if self.render_mode == '3d' then
    assert(tf, "Transform cannot be nil for 3D render")

    local vsize = self.io.DisplaySize
    if opts.viewport_debug then
      pass:sphere(tf * mat4(vec3(0), vec3(0.02), nil))
      if opts.pivot then
        local w, h = vsize.x * 0.01, vsize.y * 0.01
        pass:setColor(0.5, 0.5, 0.5, 1)
        pass:plane(tf * mat4(vec3(w * 0.5, -h * 0.5, 0), vec3(w, h, 1), nil), 'line')
        pass:setColor(1, 1, 1, 1)
      end
    end
    if opts.pivot then
      local ox, oy = vsize.x * opts.pivot.x, vsize.y * opts.pivot.y
      tf:mul(mat4(vec3(-ox * 0.01, oy * 0.01, 0), vec3(1), nil))
    end
    if opts.viewport_debug then
      local w, h =vsize.x * 0.01, vsize.y * 0.01
      pass:plane(tf * mat4(vec3(w * 0.5, -h * 0.5, 0), vec3(w, h, 1), nil), 'line')
    end
    pass:transform(tf)
  else
    pass:setDepthTest('none')
  end

  -- Preventing incorrect context
  self:Activate()

  local data = self.draw_data

  local total_vs = math.max(5000, data.TotalVtxCount)
  local total_is = math.max(5000, data.TotalIdxCount)
  if total_vs > self.max_vertcount then
    self.max_vertcount = total_vs
    if self.mesh then self.mesh:release() end
    if self.mesh_vdata then self.mesh_vdata:release() end
    self.mesh = lovr.graphics.newMesh(vertexformat, total_vs, 'gpu')
    local vdata_size = total_vs*ffi.sizeof("ImDrawVert")
    self.mesh_vdata = lovr.data.newBlob(math.max(vdata_size, ffi.sizeof("ImDrawVert")))
  end
  if total_is > self.max_vidxcount then
    self.max_vidxcount = total_is
    if self.mesh_idata then self.mesh_idata:release() end
    local idata_size = total_is*ffi.sizeof("ImDrawIdx")
    self.mesh_idata = lovr.data.newBlob(math.max(idata_size, ffi.sizeof("ImDrawIdx")))
  end

  local vsidx, isidx = 0, 0
  local vdata_ptr = ffi.cast('ImDrawVert*', self.mesh_vdata:getPointer())
  local idata_ptr = ffi.cast('ImDrawIdx*', self.mesh_idata:getPointer())
  local cmd_lists_info = {}
  -- local draw_offset = 0
  for i = 0, data.CmdListsCount - 1 do
    local cmd_list = data.CmdLists.Data[i]
    local vcount = cmd_list.VtxBuffer.Size
    local icount = cmd_list.IdxBuffer.Size
    ffi.copy(vdata_ptr + vsidx, cmd_list.VtxBuffer.Data, vcount*ffi.sizeof("ImDrawVert"))
    ffi.copy(idata_ptr + isidx, cmd_list.IdxBuffer.Data, icount*ffi.sizeof("ImDrawIdx"))
    cmd_lists_info[#cmd_lists_info + 1] = {
      vsidx = vsidx, isidx = isidx,
      vcount = vcount, icount = icount,
    }
    vsidx = vsidx + vcount
    isidx = isidx + icount
  end
  self.mesh:setVertices(self.mesh_vdata)
  self.mesh:setIndices(self.mesh_idata, 'u16')

  for i = 0, data.CmdListsCount - 1 do
    local cmd_list = data.CmdLists.Data[i]
    local list_info = cmd_lists_info[i + 1]

    for k = 0, cmd_list.CmdBuffer.Size - 1 do
      local cmd = cmd_list.CmdBuffer.Data[k]
      if cmd.UserCallback ~= nil then
        pass:setShader()
        pass:setMaterial()
        local cb_id = ffi.string(ffi.cast("void*", cmd.UserCallback))
        local callback = _common.callbacks[cb_id]
        if callback then
          -- lua callback
          callback(self, pass, cmd_list, cmd)
        elseif cb_id:sub(1, 4) == 'LCb#' then
          print("[ERROR] Draw callback was released.")
        else
          -- c callback
          cmd.UserCallback(cmd_list, cmd)
        end
      elseif cmd.ElemCount > 0 then
        local clipX, clipY = cmd.ClipRect.x, cmd.ClipRect.y
        local clipW = cmd.ClipRect.z - clipX
        local clipH = cmd.ClipRect.w - clipY

        if clipW > 0 and clipH > 0 then
          -- pass:setBlendMode("alpha", "alphamultiply")

          local tex_id = tonumber(C.ImDrawCmd_GetTexID(cmd))
          local tex = TexturesList[tex_id]
          if tex then
            -- TODO fix, lovr texture & canvas are both Texture, need to setBlendMode?
            -- if obj:type() == "Texture" then
            --   pass:setBlendMode("alpha", "premultiplied")
            -- end
            pass:setShader(self.custom_shader or self.default_shader)
            pass:setMaterial(tex)
          end

          if self.render_mode == '3d' then
            pass:send('UIClipMin', vec2(clipX, clipY))
            pass:send('UIClipMax', vec2(clipX + clipW, clipY + clipH))
          else
            pass:setScissor(clipX, clipY, clipW, clipH)
          end
          self.mesh:setDrawRange(list_info.isidx + cmd.IdxOffset + 1, cmd.ElemCount, list_info.vsidx)
          pass:draw(self.mesh)
        end
      end
    end
  end
end

function Context:Destroy()
  ffi.gc(self.context, nil)
  C.igDestroyContext(self.context)
  self.context = nil
  self.io = nil
  self.platform_io = nil
  self.draw_data = nil
  self.activated = false
  self.fonts = nil
  self.mesh = nil
  self.mesh_vdata = nil
  self.mesh_idata = nil
  self.tex_refs = nil
  if ActivatedContext == self then
    ActivatedContext = nil
  end
end

------------------------ Input ----------------------

function Context:MouseMoved(x, y)
  -- TODO Fix
  -- if love.window.hasMouseFocus() then
    C.ImGuiIO_AddMousePosEvent(self.io, x, y)
  -- end
end

local mouse_buttons = { true, true, true }
function Context:MousePressed(button)
  if mouse_buttons[button] then
    C.ImGuiIO_AddMouseButtonEvent(self.io, button - 1, true)
  end
end

function Context:MouseReleased(button)
  if mouse_buttons[button] then
    C.ImGuiIO_AddMouseButtonEvent(self.io, button - 1, false)
  end
end

function Context:WheelMoved(x, y)
  C.ImGuiIO_AddMouseWheelEvent(self.io, x, y)
end

function Context:KeyPressed(key)
  local t = lovrkeymap[key]
  if type(t) == "table" then
    C.ImGuiIO_AddKeyEvent(self.io, t[1], true)
    C.ImGuiIO_AddKeyEvent(self.io, t[2], true)
  else
    C.ImGuiIO_AddKeyEvent(self.io, t or C.ImGuiKey_None, true)
  end
end

function Context:KeyReleased(key)
  local t = lovrkeymap[key]
  if type(t) == "table" then
    C.ImGuiIO_AddKeyEvent(self.io, t[1], false)
    C.ImGuiIO_AddKeyEvent(self.io, t[2], false)
  else
    C.ImGuiIO_AddKeyEvent(self.io, t or C.ImGuiKey_None, false)
  end
end

function Context:TextInput(text)
  C.ImGuiIO_AddInputCharactersUTF8(self.io, text)
end

function Context:Focus(focused)
  C.ImGuiIO_AddFocusEvent(self.io, focused)
end

-- function Context:JoystickAdded(joystick)
--   if not joystick:isGamepad() then return end
--   self.io.BackendFlags = bit.bor(self.io.BackendFlags, C.ImGuiBackendFlags_HasGamepad)
-- end

-- TODO Fix gamepad
-- function Context:JoystickRemoved()
--     for _, joystick in ipairs(love.joystick.getJoysticks()) do
--         if joystick:isGamepad() then return end
--     end
--     self.io.BackendFlags = bit.band(io.BackendFlags, bit.bnot(C.ImGuiBackendFlags_HasGamepad))
-- end

-- local gamepad_map = {
--     start = C.ImGuiKey_GamepadStart,
--     back = C.ImGuiKey_GamepadBack,
--     a = C.ImGuiKey_GamepadFaceDown,
--     b = C.ImGuiKey_GamepadFaceRight,
--     y = C.ImGuiKey_GamepadFaceUp,
--     x = C.ImGuiKey_GamepadFaceLeft,
--     dpleft = C.ImGuiKey_GamepadDpadLeft,
--     dpright = C.ImGuiKey_GamepadDpadRight,
--     dpup = C.ImGuiKey_GamepadDpadUp,
--     dpdown = C.ImGuiKey_GamepadDpadDown,
--     leftshoulder = C.ImGuiKey_GamepadL1,
--     rightshoulder = C.ImGuiKey_GamepadR1,
--     leftstick = C.ImGuiKey_GamepadL3,
--     rightstick = C.ImGuiKey_GamepadR3,
--     --analog
--     triggerleft = C.ImGuiKey_GamepadL2,
--     triggerright = C.ImGuiKey_GamepadR2,
--     leftx = {C.ImGuiKey_GamepadLStickLeft, C.ImGuiKey_GamepadLStickRight},
--     lefty = {C.ImGuiKey_GamepadLStickUp, C.ImGuiKey_GamepadLStickDown},
--     rightx = {C.ImGuiKey_GamepadRStickLeft, C.ImGuiKey_GamepadRStickRight},
--     righty = {C.ImGuiKey_GamepadRStickUp, C.ImGuiKey_GamepadRStickDown},
-- }

-- function Context:GamepadPressed(button)
--     io:AddKeyEvent(gamepad_map[button] or C.ImGuiKey_None, true)
-- end

-- function Context:GamepadReleased(button)
--     io:AddKeyEvent(gamepad_map[button] or C.ImGuiKey_None, false)
-- end

-- function Context:GamepadAxis(axis, value, threshold)
--     threshold = threshold or 0
--     local imguikey = gamepad_map[axis]
--     if type(imguikey) == "table" then
--         if value > threshold then
--             io:AddKeyAnalogEvent(imguikey[2], true, value)
--             io:AddKeyAnalogEvent(imguikey[1], false, 0)
--         elseif value < -threshold then
--             io:AddKeyAnalogEvent(imguikey[1], true, -value)
--             io:AddKeyAnalogEvent(imguikey[2], false, 0)
--         else
--            io:AddKeyAnalogEvent(imguikey[1], false, 0)
--            io:AddKeyAnalogEvent(imguikey[2], false, 0)
--         end
--     elseif imguikey then
--         io:AddKeyAnalogEvent(imguikey, value ~= 0, value)
--     end
-- end

function Context:Resize(w, h)
  self.w, self.h = w, h
  self.io.DisplaySize.x, self.io.DisplaySize.y = self.w, self.h
end

-- input capture

function Context:GetWantCaptureMouse()
    return self.io.WantCaptureMouse
end

function Context:GetWantCaptureKeyboard()
    return self.io.WantCaptureKeyboard
end

function Context:GetWantTextInput()
    return self.io.WantTextInput
end

-- flag helpers
local flags = {}
for name in pairs(M) do
  name = name:match("^(%w+Flags)_")
  if name and not flags[name] then
    flags[name] = true
  end
end

for name in pairs(flags) do
  local shortname = name:gsub("^ImGui", "")
  shortname = shortname:gsub("^Im", "")
  L[shortname] = function(...)
    local r = 0
    for i = 1, select('#', ...) do
      local flag_name = name .. "_" .. select(i, ...)
      local v = M[flag_name]
      assert(v, "Invalid tag "..flag_name)
      r = bit.bor(r, v)
    end
    return r
  end
end
