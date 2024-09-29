-- Make sure the shared library can be found through package.cpath before loading the module.
-- For example, if you put it in the LÖVE save directory, you could do something like this:
local lib_path = lovr.filesystem.getWorkingDirectory()..'\\cimgui\\build\\Debug'
package.cpath = lib_path..'\\?.dll;'..package.cpath

local ImGui = require "src" -- cimgui is the folder containing the Lua module (the "src" folder in the github repository)

local ui_2d, ui_3d1, ui_3d2

local ImVec2Zero = ImGui.ImVec2_Float(0, 0)

function lovr.load()
  ui_2d = ImGui.lovr.Context.new('Alpha8', '2d')
  ui_3d1 = ImGui.lovr.Context.new('Alpha8', '3d')
  ui_3d2 = ImGui.lovr.Context.new('Alpha8', '3d')
end

function lovr.update(dt)
  ui_2d:update(dt)
  ImGui.NewFrame() -- if NewFrame, must call render
  ImGui.ShowDemoWindow()
  ui_2d:render() -- EndFrame & generate draw data, must render before start other context

  ui_3d1:update(dt)
  if not ui_3d1.rendered then
    ui_3d1.rendered = true
    -- After executing a New Frame and rendering
    -- you can use the drawing data to call multiple draw calls, so that it looks like a static UI
    ImGui.NewFrame()
    ImGui.SetNextWindowPos(ImVec2Zero, nil, ImVec2Zero)
    ImGui.SetNextWindowSize(ImGui.ImVec2_Float(200, 200))
    ImGui.Begin('win_3d_1')
    ImGui.Text('3d win 1')
    ImGui.Button('button')
    ImGui.End()
    ui_3d1:render()
  end

  ui_3d2:update(dt)
  ImGui.NewFrame()
  ImGui.SetNextWindowPos(ImVec2Zero, nil, ImVec2Zero)
  ImGui.SetNextWindowSize(ImGui.ImVec2_Float(400, 300))
  ImGui.Begin('win_3d_2')
  ImGui.Text('3d win 2')
  ImGui.Text('new line')
  ImGui.End()
  ui_3d2:render()
end

function lovr.draw(pass)
  pass:sphere(vec3(0, 1.5, -0.5), vec3(0.1))
  pass:sphere(vec3(-2.5, 1.5, -4.6), vec3(1.0))

  ui_3d1:draw(pass, mat4(vec3(-3, 4, -4)))
  ui_3d2:draw(pass, mat4(vec3(-2, 3, -3), vec3(1), quat(1.1, 0, 1, 0)))

  -- -- example window
  ui_2d:draw(pass)
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
  ui_2d:destroy()
  ui_3d1:destroy()
  ui_3d2:destroy()
end
