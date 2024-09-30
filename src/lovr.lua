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

local lovrkeymap = {
    ["return"] = C.ImGuiKey_Enter,
    ["escape"] = C.ImGuiKey_Escape,
    ["backspace"] = C.ImGuiKey_Backspace,
    ["tab"] = C.ImGuiKey_Tab,
    ["space"] = C.ImGuiKey_Space,
    [","] = C.ImGuiKey_Comma,
    ["-"] = C.ImGuiKey_Minus,
    ["."] = C.ImGuiKey_Period,
    ["/"] = C.ImGuiKey_Slash,

    ["0"] = C.ImGuiKey_0,
    ["1"] = C.ImGuiKey_1,
    ["2"] = C.ImGuiKey_2,
    ["3"] = C.ImGuiKey_3,
    ["4"] = C.ImGuiKey_4,
    ["5"] = C.ImGuiKey_5,
    ["6"] = C.ImGuiKey_6,
    ["7"] = C.ImGuiKey_7,
    ["8"] = C.ImGuiKey_8,
    ["9"] = C.ImGuiKey_9,

    [";"] = C.ImGuiKey_Semicolon,
    ["="] = C.ImGuiKey_Equal,

    ["["] = C.ImGuiKey_LeftBracket,
    ["\\"] = C.ImGuiKey_Backslash,
    ["]"] = C.ImGuiKey_RightBracket,
    ["`"] = C.ImGuiKey_GraveAccent,

    ["a"] = C.ImGuiKey_A,
    ["b"] = C.ImGuiKey_B,
    ["c"] = C.ImGuiKey_C,
    ["d"] = C.ImGuiKey_D,
    ["e"] = C.ImGuiKey_E,
    ["f"] = C.ImGuiKey_F,
    ["g"] = C.ImGuiKey_G,
    ["h"] = C.ImGuiKey_H,
    ["i"] = C.ImGuiKey_I,
    ["j"] = C.ImGuiKey_J,
    ["k"] = C.ImGuiKey_K,
    ["l"] = C.ImGuiKey_L,
    ["m"] = C.ImGuiKey_M,
    ["n"] = C.ImGuiKey_N,
    ["o"] = C.ImGuiKey_O,
    ["p"] = C.ImGuiKey_P,
    ["q"] = C.ImGuiKey_Q,
    ["r"] = C.ImGuiKey_R,
    ["s"] = C.ImGuiKey_S,
    ["t"] = C.ImGuiKey_T,
    ["u"] = C.ImGuiKey_U,
    ["v"] = C.ImGuiKey_V,
    ["w"] = C.ImGuiKey_W,
    ["x"] = C.ImGuiKey_X,
    ["y"] = C.ImGuiKey_Y,
    ["z"] = C.ImGuiKey_Z,

    ["capslock"] = C.ImGuiKey_CapsLock,

    ["f1"] = C.ImGuiKey_F1,
    ["f2"] = C.ImGuiKey_F2,
    ["f3"] = C.ImGuiKey_F3,
    ["f4"] = C.ImGuiKey_F4,
    ["f5"] = C.ImGuiKey_F5,
    ["f6"] = C.ImGuiKey_F6,
    ["f7"] = C.ImGuiKey_F7,
    ["f8"] = C.ImGuiKey_F8,
    ["f9"] = C.ImGuiKey_F9,
    ["f10"] = C.ImGuiKey_F10,
    ["f11"] = C.ImGuiKey_F11,
    ["f12"] = C.ImGuiKey_F12,

    ["printscreen"] = C.ImGuiKey_PrintScreen,
    ["scrolllock"] = C.ImGuiKey_ScrollLock,
    ["pause"] = C.ImGuiKey_Pause,
    ["insert"] = C.ImGuiKey_Insert,
    ["home"] = C.ImGuiKey_Home,
    ["pageup"] = C.ImGuiKey_PageUp,
    ["delete"] = C.ImGuiKey_Delete,
    ["end"] = C.ImGuiKey_End,
    ["pagedown"] = C.ImGuiKey_PageDown,
    ["right"] = C.ImGuiKey_RightArrow,
    ["left"] = C.ImGuiKey_LeftArrow,
    ["down"] = C.ImGuiKey_DownArrow,
    ["up"] = C.ImGuiKey_UpArrow,

    ["numlock"] = C.ImGuiKey_NumLock,
    ["kp/"] = C.ImGuiKey_KeypadDivide,
    ["kp*"] = C.ImGuiKey_KeypadMultiply,
    ["kp-"] = C.ImGuiKey_KeypadSubtract,
    ["kp+"] = C.ImGuiKey_KeypadAdd,
    ["kpenter"] = C.ImGuiKey_KeypadEnter,
    ["kp0"] = C.ImGuiKey_Keypad0,
    ["kp1"] = C.ImGuiKey_Keypad1,
    ["kp2"] = C.ImGuiKey_Keypad2,
    ["kp3"] = C.ImGuiKey_Keypad3,
    ["kp4"] = C.ImGuiKey_Keypad4,
    ["kp5"] = C.ImGuiKey_Keypad5,
    ["kp6"] = C.ImGuiKey_Keypad6,
    ["kp7"] = C.ImGuiKey_Keypad7,
    ["kp8"] = C.ImGuiKey_Keypad8,
    ["kp9"] = C.ImGuiKey_Keypad9,
    ["kp."] = C.ImGuiKey_KeypadDecimal,
    ["kp="] = C.ImGuiKey_KeypadEqual,

    ["menu"] = C.ImGuiKey_Menu,

    ["lctrl"] = {C.ImGuiKey_LeftCtrl, C.ImGuiMod_Ctrl},
    ["lshift"] = {C.ImGuiKey_LeftShift, C.ImGuiMod_Shift},
    ["lalt"] = {C.ImGuiKey_LeftAlt, C.ImGuiMod_Alt},
    ["lgui"] = {C.ImGuiKey_LeftSuper, C.ImGuiMod_Super},
    ["rctrl"] = {C.ImGuiKey_RightCtrl, C.ImGuiMod_Ctrl},
    ["rshift"] = {C.ImGuiKey_RightShift, C.ImGuiMod_Shift},
    ["ralt"] = {C.ImGuiKey_RightAlt, C.ImGuiMod_Alt},
    ["rgui"] = {C.ImGuiKey_RightSuper, C.ImGuiMod_Super},
}
_common.lovrkeymap = lovrkeymap

_common.textures = setmetatable({},{__mode="v"})
_common.callbacks = setmetatable({},{__mode="v"})

local DefaultVertex2DShader = [[
  vec4 lovrmain() {
    vec2 uv = VertexPosition.xy / Resolution.xy;
    Color = vec4(gammaToLinear(VertexColor.rgb), VertexColor.a) * Material.color * PassColor;
    return vec4(uv * 2. - 1., 1., 1.);
  }
]]
local DefaultVertex3DShader = [[
  layout(location = 0) out vec2 UIPos;
  vec4 lovrmain() {
    Color = vec4(gammaToLinear(VertexColor.rgb), VertexColor.a) * Material.color * PassColor;
    vec4 vp = vec4(VertexPosition.xy * vec2(0.01, -0.01), 0., 1.0);
    UIPos = VertexPosition.xy;
    PositionWorld = vec3(WorldFromLocal * vp);
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

local Context = {}
Context.__index = Context

L.SharedFontAtlas = M.ImFontAtlas()
L.SharedFontTexture = {} -- { [format] = texture }

-- return ImFont*
function L.AddFontTTF(ttf_path, size, conf, out_font_atlas)
  local config = M.ImFontConfig()
  size = size or 16
  local ranges

  if conf then
    if conf.args then
      for k, v in pairs(conf.args) do
        config[k] = v
      end
    end

    if conf.ranges then
      ranges = ffi.new('ImWchar[?]', #conf.ranges, conf.ranges)
    end
    if conf.monospaced then
      config.GlyphMinAdvanceX = size
    end
  end

  return out_font_atlas:AddFontFromFileTTF(ttf_path, size, config, ranges)
end

-- return texture
function L.BuildFontAtlasTexture(font_atlas, texture_format)
  assert(font_atlas, "font_atlas cannot be nil")
  texture_format = texture_format or "RGBA32"
  local pixels, width, height = ffi.new("unsigned char*[1]"), ffi.new("int[1]"), ffi.new("int[1]")
  local imgdata

  if texture_format == "RGBA32" then
    C.ImFontAtlas_GetTexDataAsRGBA32(font_atlas, pixels, width, height, nil)
    local datablob = lovr.data.newBlob(ffi.string(pixels[0], width[0]*height[0]*4))
    imgdata = lovr.data.newImage(width[0], height[0], "rgba8", datablob)
  elseif texture_format == "Alpha8" then
    C.ImFontAtlas_GetTexDataAsAlpha8(font_atlas, pixels, width, height, nil)
    local datablob = lovr.data.newBlob(ffi.string(pixels[0], width[0]*height[0]))
    imgdata = lovr.data.newImage(width[0], height[0], "r8", datablob)
  else
    error([[Format should be either "RGBA32" or "Alpha8".]], 2)
  end

  return lovr.graphics.newTexture(imgdata)
end

function L.AddSharedFontTTF(ttf_path, size, conf)
  local font = L.AddFontTTF(ttf_path, size, conf, L.SharedFontAtlas)
  L.SharedFontTexture = {}
  return font
end

function L.FetchSharedFontTexture(format)
  if not L.SharedFontTexture[format] then
    L.SharedFontTexture[format] = L.BuildFontAtlasTexture(L.SharedFontAtlas, format)
  end
  return L.SharedFontTexture[format]
end

function L.NewContext(...)
  return Context.new(...)
end

--[[
vertex_shader: nil, 2d, 3d for vertex code
opts.ini_path
opts.font_atlas
opts.display_size { x, y }, default use lovr window size
opts.font_texture_format, default is RGBA32
]]
function Context.new(vertex_shader, opts)
  local self = setmetatable({}, Context)
  opts = opts or {}
  if vertex_shader == '3d' then
    self.vertex_shader = DefaultVertex3DShader
  elseif vertex_shader == '2d' or not vertex_shader then
    self.vertex_shader = DefaultVertex2DShader
  end

  self.custom_shader = nil
  self.default_shader = lovr.graphics.newShader(self.vertex_shader, [[
    Constants {
      vec2 UIClipMin;
      vec2 UIClipMax;
    };
    layout(location = 0) in vec2 UIPos;

    vec4 lovrmain() {
      if (UIPos.x < UIClipMin.x || UIPos.y < UIClipMin.y
        || UIPos.x > UIClipMax.x || UIPos.y > UIClipMax.y
      ) {
        discard;
      }
      return DefaultColor;
    }
  ]], {
    flags = ShaderFlags,
  })

  self.font_texture_format = opts.font_texture_format or "RGBA32"
  self.font_atlas = opts.font_atlas or L.SharedFontAtlas
  self.context = C.igCreateContext(self.font_atlas)
  self.activated = false

  self:Activate()
  self.io = C.igGetIO()
  self.platform_io = C.igGetPlatformIO()

  -- TODO skip build for shared font
  self.font_texture = nil
  self:BuildFontAtlas()

  if self.font_texture_format == 'Alpha8' then
    self.font_shader = lovr.graphics.newShader(self.vertex_shader, [[
      Constants {
        vec2 UIClipMin;
        vec2 UIClipMax;
      };
      layout(location = 0) in vec2 UIPos;
      vec4 lovrmain() {
        if (UIPos.x < UIClipMin.x || UIPos.y < UIClipMin.y
          || UIPos.x > UIClipMax.x || UIPos.y > UIClipMax.y
        ) {
          discard;
        }
        float alpha = getPixel(ColorTexture, UV).r;
        return vec4(Color.rgb, Color.a*alpha);
      }
    ]], { flags = ShaderFlags })
  else
    self.font_shader = nil
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
    self.io.DisplaySize.x, self.io.DisplaySize.y = unpack(opts.display_size)
  else
    self.io.DisplaySize.x, self.io.DisplaySize.y = lovr.system.getWindowDimensions()
  end

  if opts.ini_path == false then
    self.io.IniFilename = nil
  else
    lovr.filesystem.createDirectory("/")
    -- save path to avoid gc string
    self.ini_path = opts.ini_path or (lovr.filesystem.getSaveDirectory().."/imgui.ini")
    self.io.IniFilename = self.ini_path
  end

  -- save name to avoid gc string
  self.impl_name = opts.impl_name or ("cimgui-lovr#"..string.format("%p", self))
  self.io.BackendPlatformName = self.impl_name
  self.io.BackendRendererName = self.impl_name

  self.io.BackendFlags = bit.bor(
    C.ImGuiBackendFlags_HasMouseCursors, C.ImGuiBackendFlags_HasSetMousePos
  )

  self.mesh = nil
  self.mesh_vdata = nil
  self.mesh_idata = nil
  self.max_vertcount = 0
  self.max_vidxcount = 0

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

function Context:SetShader(shader)
  self.custom_shader = shader
end

function Context:BuildFontAtlas()
  if self.font_atlas == L.SharedFontAtlas then
    if not L.SharedFontTexture[self.font_texture_format] then
      L.SharedFontTexture[self.font_texture_format] = L.BuildFontAtlasTexture(
        L.SharedFontAtlas, self.font_texture_format
      )
    end
    self.use_shared_font_texture = true
    self.font_texture = nil
  else
    self.font_texture = L.BuildFontAtlasTexture(self.io.Fonts, self.font_texture_format)
  end
end

-- auto activate
function Context:BeginFrame(dt)
  assert(self.context, "Cannot draw for a invalid context")
  if not self.activated then
    self:Activate()
  end

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

  if self.use_shared_font_texture then
    -- make sure the font atlas is initialized
    self.font_texture = L.FetchSharedFontTexture(self.font_texture_format)
  end

  C.igNewFrame() -- if NewFrame, must call render
end

function Context:Render()
  assert(self.context, "Cannot draw for a invalid context")
  C.igRender()
  if self.io.DisplaySize.x == 0 or self.io.DisplaySize.y == 0
    -- or not love.window.isVisible()
  then
    self.draw_data = nil
  else
    self.draw_data = C.igGetDrawData()
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

local function lovr_texture_test(t)
  return t:type() == "Texture"
end

-- tf: mat4 transform, apply transform for 3d draw. draw 2d UI if not tf
function Context:Draw(pass, tf)
  if not self.draw_data then return end

  pass:push("state")
  pass:setFaceCull('none')
  pass:setViewCull(false)
  pass:setDepthWrite(false)

  if tf then
    pass:transform(tf)
  else
    pass:setDepthTest('none')
  end

  if not self.activated then
    self:Activate()
  end

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
        local callback = _common.callbacks[ffi.string(ffi.cast("void*", cmd.UserCallback))] or cmd.UserCallback
        callback(cmd_list, cmd)
      elseif cmd.ElemCount > 0 then
        local clipX, clipY = cmd.ClipRect.x, cmd.ClipRect.y
        local clipW = cmd.ClipRect.z - clipX
        local clipH = cmd.ClipRect.w - clipY

        pass:setBlendMode("alpha", "alphamultiply")

        local texture_id = C.ImDrawCmd_GetTexID(cmd)
        if texture_id ~= nil then
          local obj = _common.textures[tostring(texture_id)]
          local status, value = pcall(lovr_texture_test, obj)
          assert(status and value, "Only LÖVE Texture objects can be passed as ImTextureID arguments.")
          -- TODO fix, lovr texture & canvas are both Texture, need to setBlendMode?
          -- if obj:type() == "Texture" then
          --   pass:setBlendMode("alpha", "premultiplied")
          -- end
          pass:setShader(self.default_shader)
          pass:setMaterial(obj)
        else
          pass:setShader(self.custom_shader or self.font_shader or self.default_shader)
          pass:setMaterial(self.font_texture)
        end

        if tf then
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
  pass:pop('state')
end

function Context:Destroy()
  C.igDestroyContext(self.context)
  self.context = nil
  self.io = nil
  self.platform_io = nil
  self.draw_data = nil
  self.activated = false
  if ActivatedContext == self then
    ActivatedContext = nil
  end
  -- TODO Fix
  -- cliboard_callback_get:free()
  -- cliboard_callback_set:free()
  -- cliboard_callback_get, cliboard_callback_set = nil
end

------------------------ Input ----------------------

function Context:MouseMoved(x, y)
  -- TODO Fix
  -- if love.window.hasMouseFocus() then
    self.io:AddMousePosEvent(x, y)
  -- end
end

local mouse_buttons = { true, true, true }
function Context:MousePressed(button)
  if mouse_buttons[button] then
    self.io:AddMouseButtonEvent(button - 1, true)
  end
end

function Context:MouseReleased(button)
  if mouse_buttons[button] then
    self.io:AddMouseButtonEvent(button - 1, false)
  end
end

function Context:WheelMoved(x, y)
  self.io:AddMouseWheelEvent(x, y)
end

function Context:KeyPressed(key)
  local t = lovrkeymap[key]
  if type(t) == "table" then
    self.io:AddKeyEvent(t[1], true)
    self.io:AddKeyEvent(t[2], true)
  else
    self.io:AddKeyEvent(t or C.ImGuiKey_None, true)
  end
end

function Context:KeyReleased(key)
  local t = lovrkeymap[key]
  if type(t) == "table" then
    self.io:AddKeyEvent(t[1], false)
    self.io:AddKeyEvent(t[2], false)
  else
    self.io:AddKeyEvent(t or C.ImGuiKey_None, false)
  end
end

function Context:TextInput(text)
  C.ImGuiIO_AddInputCharactersUTF8(self.io, text)
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
    local t = {}
    for _, flag in ipairs({...}) do
      t[#t + 1] = M[name .. "_" .. flag]
    end
    return bit.bor(unpack(t))
  end
end
