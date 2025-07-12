-- Dear Imgui version: 1.88

local path = (...):gsub(".init$", "") .. "."

require(path .. "cdef")

local M = require(path .. "master")
local ffi = require("ffi")
if lovr then
  package.cpath = lovr.filesystem.getWorkingDirectory()..'\\?.dll;'..package.cpath
end
local library_path = assert(package.searchpath("cimgui", package.cpath))

  print(library_path)
M.C = ffi.load(library_path)

require(path .. "enums")
require(path .. "wrap")
if lovr then
  require(path .. "lovr_conf")
  require(path .. "lovr")
elseif love then
  require(path .. "love")
  require(path .. "shortcuts")
end

-- remove access to M._common
M._common = nil

return M
