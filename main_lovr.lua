-- Make sure the shared library can be found through package.cpath before loading the module.
-- For example, if you put it in the LÖVE save directory, you could do something like this:
local lib_path = lovr.filesystem.getWorkingDirectory()..'\\cimgui\\build\\Debug'
package.cpath = lib_path..'\\?.dll;'..package.cpath

local ImGui = require "src" -- cimgui is the folder containing the Lua module (the "src" folder in the github repository)

local ui_2d, ui_3d1, ui_3d2

local ImVec2Zero = ImGui.ImVec2_Float(0, 0)

function lovr.load()
  ui_2d = ImGui.lovr.NewContext('Alpha8', '2d')
  ui_3d1 = ImGui.lovr.NewContext('Alpha8', '3d')
  ui_3d2 = ImGui.lovr.NewContext('Alpha8', '3d')
end

function lovr.update(dt)
  ui_2d:BeginFrame(dt) -- auto new frame, must call render if update
  ImGui.ShowDemoWindow()
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
  ImGui.End()
  ui_3d2:Render()
end

function lovr.draw(pass)
  pass:sphere(vec3(0, 1.5, -0.5), vec3(0.1))
  pass:sphere(vec3(-2.5, 1.5, -4.6), vec3(1.0))

  ui_3d1:Draw(pass, mat4(vec3(-3, 4, -4)))
  ui_3d2:Draw(pass, mat4(vec3(-2, 3, -3), vec3(1), quat(1.1, 0, 1, 0)))

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
