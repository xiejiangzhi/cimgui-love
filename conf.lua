if lovr then
  function lovr.conf(t)
    -- t.graphics.vsync = false
    t.window.width = 1400
    t.window.height = 900
  end
elseif love then
  function love.conf(t)
    t.window.width = 1400
    t.window.height = 900
  end
end