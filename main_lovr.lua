-- Make sure the shared library can be found through package.cpath before loading the module.
-- For example, if you put it in the LÖVE save directory, you could do something like this:
local lib_path = lovr.filesystem.getWorkingDirectory()..'\\cimgui\\build\\Debug'
package.cpath = lib_path..'\\?.dll;'..package.cpath

local ImGui = require "src" -- cimgui is the folder containing the Lua module (the "src" folder in the github repository)

local ui_2d, ui_3d1, ui_3d2

local ImVec2Zero = ImGui.ImVec2_Float(0, 0)

local IconFont
function lovr.load()
  ImGui.lovr.SharedFontAtlas:AddFontDefault(nil)
  if lovr.filesystem.isFile('AwesomeFont.otf') then
    IconFont = ImGui.lovr.AddSharedFontTTF('AwesomeFont.otf', 28, { ranges = { 0xe005, 0xf8ff, 0 } })
  end

  ui_2d = ImGui.lovr.NewContext('2d', { font_texture_format = 'Alpha8' })
  ui_3d1 = ImGui.lovr.NewContext('3d', {
    font_texture_format = 'RGBA32', ini_path = false, viewport = vec2(200, 200)
  })
  ui_3d2 = ImGui.lovr.NewContext('3d', {
    font_texture_format = 'Alpha8', ini_path = false, viewport = vec2(400, 300)
  })
end

local fps = 0
local count_frames = 0
local count_ts = 0
local count_time = 1

function lovr.update(dt)
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
    for i = 1, 10 do
      ImGui.Text('3d win 1')
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
  ImGui.Text('icon')
  if IconFont then
    ImGui.PushStyleColor_Vec4(0, ImGui.ImVec4_Float(1, 0, 0, 1))
    ImGui.PushFont(IconFont)
    ImGui.Text('\u{f369}')
    ImGui.Text('\u{f036}')
    ImGui.PopFont()
    ImGui.PopStyleColor(1)
  end
  ImGui.End()
  ui_3d2:Render()
end

function lovr.draw(pass)
  pass:sphere(vec3(0, 1.5, -0.5), vec3(0.1))
  pass:sphere(vec3(-2.5, 1.5, -4.6), vec3(1.0))

  ui_3d1:Draw(pass, mat4(vec3(-3, 4, -4)), { viewport_debug = true, pivot = vec2(0.5, 0.5) })
  ui_3d2:Draw(pass, mat4(vec3(-2, 3, -4), vec3(1), quat(-0.8, 1, 1, 0)), {
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

function lovr.quit()
  ui_2d:Destroy()
  ui_3d1:Destroy()
  ui_3d2:Destroy()
end
