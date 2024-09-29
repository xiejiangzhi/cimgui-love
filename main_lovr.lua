-- Make sure the shared library can be found through package.cpath before loading the module.
-- For example, if you put it in the LÖVE save directory, you could do something like this:
local lib_path = lovr.filesystem.getWorkingDirectory()..'\\cimgui\\build\\Debug'
package.cpath = lib_path..'\\?.dll;'..package.cpath

local ImGui = require "src" -- cimgui is the folder containing the Lua module (the "src" folder in the github repository)

local DrawIn3D = false

function lovr.load()
  if DrawIn3D then
    ImGui.lovr.Init('Alpha8', [[
      vec4 lovrmain() {
        Color = vec4(gammaToLinear(VertexColor.rgb), VertexColor.a) * Material.color * PassColor;
        vec4 vp = vec4(VertexPosition.xy * vec2(0.01, -0.01), 0., 1.0);
        PositionWorld = vec3(WorldFromLocal * vp);
        Normal = NormalMatrix * vec3(0, 0, 1);
        return ViewProjection * Transform * vp;
      }
    ]])
  else
    ImGui.lovr.Init('Alpha8')
  end
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
  pass:sphere(vec3(0, 1.5, -0.5), vec3(0.1))
  pass:sphere(vec3(-2.5, 1.5, -4.6), vec3(1.0))
  if DrawIn3D then
    ImGui.lovr.RenderDrawLists(pass, mat4(
      vec3(-3, 4, -4)
    ))
  else
    ImGui.lovr.RenderDrawLists(pass)
  end
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
