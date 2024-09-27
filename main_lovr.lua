-- Make sure the shared library can be found through package.cpath before loading the module.
-- For example, if you put it in the LÖVE save directory, you could do something like this:
local lib_path = lovr.filesystem.getWorkingDirectory()..'\\cimgui\\build\\Debug'
package.cpath = lib_path..'\\?.dll;'..package.cpath

local ImGui = require "src" -- cimgui is the folder containing the Lua module (the "src" folder in the github repository)

function lovr.load()
  ImGui.lovr.Init() -- or ImGui.lovr.Init("RGBA32") or ImGui.lovr.Init("Alpha8")
end

function lovr.update(dt)
  ImGui.lovr.Update(dt)
  ImGui.NewFrame()
end

function lovr.draw(pass)
  -- example window
  ImGui.ShowDemoWindow()

  -- code to render ImGui
  ImGui.Render()
  ImGui.lovr.RenderDrawLists(pass)
end


function lovr.mousemoved(x, y, ...)
  ImGui.lovr.MouseMoved(x, y)
  if not ImGui.lovr.GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.mousepressed(x, y, button, ...)
  ImGui.lovr.MousePressed(button)
  if not ImGui.lovr.GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.mousereleased(x, y, button, ...)
  ImGui.lovr.MouseReleased(button)
  if not ImGui.lovr.GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.wheelmoved(x, y)
  ImGui.lovr.WheelMoved(x, y)
  if not ImGui.lovr.GetWantCaptureMouse() then
      -- your code here
  end
end

function lovr.keypressed(key, ...)
  ImGui.lovr.KeyPressed(key)
  if not ImGui.lovr.GetWantCaptureKeyboard() then
      -- your code here
  end
end

function lovr.keyreleased(key, ...)
  ImGui.lovr.KeyReleased(key)
  if not ImGui.lovr.GetWantCaptureKeyboard() then
      -- your code here
  end
end

function lovr.textinput(t)
  ImGui.lovr.TextInput(t)
  if ImGui.lovr.GetWantCaptureKeyboard() then
      -- your code here
  end
end

function lovr.quit()
  return ImGui.lovr.Shutdown()
end
