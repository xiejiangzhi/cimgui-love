-- Make sure the shared library can be found through package.cpath before loading the module.
-- For example, if you put it in the LÖVE save directory, you could do something like this:

package.cpath = lovr.filesystem.getWorkingDirectory()..'\\?.dll;'..package.cpath

local ImGui = require "src" -- cimgui is the folder containing the Lua module (the "src" folder in the github repository)

local ui_2d, ui_3d1, ui_3d2

local ImVec2Zero = ImGui.ImVec2_Float(0, 0)

local time = 0

function lovr.load()
  ui_2d = ImGui.lovr.NewContext('2d', { impl_name = '2d' })

  ui_3d1 = ImGui.lovr.NewContext('3d', {
    ini_path = false, display_size = { 200, 200 }, impl_name = '3d1',
    master_context = ui_2d -- for shared font
  })
  ui_3d2 = ImGui.lovr.NewContext('3d', {
    ini_path = false, display_size = { 400, 300 }, impl_name = '3d2',
    master_context = ui_2d
  })

  ui_2d:AddFontTTF('AwesomeFont.otf', nil, { args = {
    MergeMode = true,
    GlyphOffset = ImGui.ImVec2_Float(0, 2.5)
  } }, 'icon')
end

local fps = 0
local count_frames = 0
local count_ts = 0
local count_time = 1

local TestTex = lovr.graphics.newTexture('imgui_hello_world.png')

local ImGuiDrawCb

function lovr.update(dt)
  time = time + dt

  ui_2d:BeginFrame(dt) -- auto new frame, must call render if update
  ImGui.ShowDemoWindow()
  ImGui.SetNextWindowPos(ImVec2Zero, nil, ImVec2Zero)
  ImGui.SetNextWindowSize(ImGui.ImVec2_Float(200, 100))
  ImGui.Begin("##FPS")
  count_ts = count_ts + dt
  count_frames = count_frames + 1
  if count_ts >= count_time then
    fps = count_frames
    count_ts = 0
    count_frames = 0
  end
  ImGui.Text(string.format("FPS: %i", fps))
  ImGui.Text(string.format("Time: %.2f", time))
  ImGui.End()
  ui_2d:Render() -- EndFrame & generate draw data, must render before start other context

  if not ui_3d1.rendered then
    ui_3d1.rendered = true
    ui_3d1:BeginFrame(dt)
    -- After executing a New Frame and rendering
    -- you can use the drawing data to call multiple draw calls, so that it looks like a static UI
    ImGui.SetNextWindowPos(ImVec2Zero, nil, ImVec2Zero)
    ImGui.SetNextWindowSize(ImGui.ImVec2_Float(200, 200))
    ImGui.Begin('win_3d_1')
    ImGui.Dummy(ImGui.ImVec2_Float(10, 10))
    -- local font = ui_3d1:GetFont('icon')
    for i = 1, 10 do
      ImGui.Text('3d win 1')
      -- ImGui.SameLine()
      -- ImGui.PushFont(font, 16)
      ImGui.Text('merged font \u{f015}')
      -- ImGui.PopFont()
    end
    ImGui.Button('button')
    ImGui.End()
    ui_3d1:Render()
  end

  ui_3d2:BeginFrame(dt)
  ImGui.SetNextWindowPos(ImVec2Zero, nil, ImVec2Zero)
  ImGui.SetNextWindowSize(ImGui.ImVec2_Float(400, 300))
  ImGui.Begin('win_3d_2')
  ImGui.Text('3d win 2')
  ImGui.Text('new line')
  ImGui.Text('icon:')

  ImGui.PushStyleColor_Vec4(0, ImGui.ImVec4_Float(1, 0, 0, 1))
  -- local font = ui_3d2:GetFont('icon')
  -- ImGui.PushFont(font, 0) -- default size
  ImGui.Text('\u{f2b9}')
  -- ImGui.PopFont()
  ImGui.PushFont(nil, 30)
  ImGui.Text('\u{f036}')
  ImGui.PopFont()
  ImGui.PushFont(nil, 20)
  ImGui.Text('default font')
  ImGui.PopFont()
  ImGui.PopStyleColor(1)

  local dv = math.abs(math.sin(time) * 20)
  local dsize = ImGui.ImVec2_Float(50 + dv, 50 + dv)
  ImGui.Dummy(dsize)
  local spos = ImGui.GetItemRectMin()
  local tpos = ImGui.GetItemRectMax()
  if ImGuiDrawCb then
    ImGuiDrawCb[1], ImGuiDrawCb[2] = spos, tpos
  else
    ImGuiDrawCb = setmetatable({ spos, tpos }, { __call = function(t, ctx, pass, parent_list, cmd)
      pass:push('state')
      pass:setColor(math.abs(math.sin(time)), 0, 1)
      pass:setDepthWrite(true)
      pass:setShader('normal')
      local sp, tp = t[1], t[2]
      local p = (sp + tp) * 0.5
      -- 0.01 is pixel to world scale, see vertex shader
      local pos = vec3(p.x * 0.01, -p.y * 0.01, 0)
      local w, h = (tp.x - sp.x) * 0.01, (tp.y - sp.y) * 0.01
      -- pass current transform is transform of ui:Draw
      pass:box(pos, vec3(w, h, 0.1 + math.abs(math.sin(time) * 0.5)))
      pass:setColor(1, 1, 1)
      pass:pop('state')
    end})
  end
  local drawlist = ImGui.GetWindowDrawList()
  drawlist:AddCallback(ImGuiDrawCb)
  ImGui.SameLine()
  ImGui.Text("Callback to draw a 3D box")

  ImGui.Image(TestTex, ImGui.ImVec2_Float(150, 100), nil, nil)
  ImGui.SameLine()
  ImGui.Image(ui_3d2.io.Fonts.TexRef, ImGui.ImVec2_Float(150, 100), nil, nil)

  ImGui.End()
  ui_3d2:Render()
end

function lovr.draw(pass)
  pass:sphere(vec3(0, 1.5, -0.5), vec3(0.1))
  pass:sphere(vec3(-2.5, 1.5, -4.6), vec3(1.0))

  ui_3d1:Draw(pass, mat4(vec3(-3, 4, -4)), { viewport_debug = true, pivot = vec2(0.5, 0.5) })
  local rot = quat.angleaxis and quat.angleaxis(-0.8, 1, 1, 0) or quat(-0.8, 1, 1, 0)
  ui_3d2:Draw(pass, mat4(vec3(-2, 3, -4), vec3(1), rot), {
    viewport_debug = true,
    pivot = { x = 0.5, y = 0 }
  })

  -- -- example window
  ui_2d:Draw(pass)
end


function lovr.mousemoved(x, y, ...)
  ui_2d:MouseMoved(x, y)
  if not ui_2d:GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.mousepressed(x, y, button, ...)
  ui_2d:MousePressed(button)
  if not ui_2d:GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.mousereleased(x, y, button, ...)
  ui_2d:MouseReleased(button)
  if not ui_2d:GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.wheelmoved(x, y)
  ui_2d:WheelMoved(x, y)
  if not ui_2d:GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.keypressed(key, ...)
  ui_2d:KeyPressed(key)
  if not ui_2d:GetWantCaptureKeyboard() then
      -- your code here
  end
end

function lovr.keyreleased(key, ...)
  ui_2d:KeyReleased(key)
  if not ui_2d:GetWantCaptureKeyboard() then
      -- your code here
  end
end

function lovr.textinput(t)
  ui_2d:TextInput(t)
  if ui_2d:GetWantCaptureKeyboard() then
      -- your code here
  end
end

function lovr.resize(w, h)
  ui_2d:Resize(w, h)
end

function lovr.focus(focused)
  ui_2d:Focus(focused)
end

function lovr.quit()
  ui_2d:Destroy()
  ui_3d1:Destroy()
  ui_3d2:Destroy()
end
