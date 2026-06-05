local env = {
    assert = assert,
    type = type,
    tonumber = tonumber,
    tostring = tostring,
    require = require,
    error = error,
    getmetatable = getmetatable,
    setmetatable = setmetatable,
    string = string,
    table = table,
    love = love,
    jit = jit,
}
setfenv(1, env)

local path = (...):gsub("[^%.]*$", "")
local M = require(path .. "master")
local ffi = require("ffi")

local C = M.C
local _common = M._common

-- add metamethods to ImVec2 and ImVec4

local ct = ffi.typeof("ImVec2")
local ImVec2 = {}
function ImVec2.__add(u, v)
    assert(type(u) == type(v) and ffi.istype(u, v), "One of the summands in not an ImVec2.")
    return ct(u.x + v.x, u.y + v.y)
end
function ImVec2.__sub(u, v)
    assert(type(u) == type(v) and ffi.istype(u, v), "One of the summands in not an ImVec2.")
    return ct( u.x - v.x, u.y - v.y)
end
function ImVec2.__unm(u)
    return ct(-u.x, -u.y)
end
function ImVec2.__mul(u, v)
    local nu, nv = tonumber(u), tonumber(v)
    if nu then
        return ct(nu*v.x, nu*v.y)
    elseif nv then
        return ct(nv*u.x, nv*u.y)
    else
        error("ImVec2 can only be multipliead by a numerical type.")
    end
end
function ImVec2.__div(u, a)
    a = assert(tonumber(a), "ImVec2 can only be divided by a numerical type.")
    return ct(u.x/a, u.y/a)
end

local ct = ffi.typeof("ImVec4")
local ImVec4 = {}
function ImVec4.__add(u, v)
    assert(type(u) == type(v) and ffi.istype(u, v), "One of the summands in not an ImVec4.")
    return ct(u.x + v.x, u.y + v.y, u.z + v.z, u.w + v.w)
end
function ImVec4.__sub(u, v)
    assert(type(u) == type(v) and ffi.istype(u, v), "One of the summands in not an ImVec4.")
    return ct(u.x - v.x, u.y - v.y, u.z - v.z, u.w - v.w)
end
function ImVec4.__unm(u)
    return ct(-u.x, -u.y, -u.z, -u.w)
end
function ImVec4.__mul(u, v)
    local nu, nv = tonumber(u), tonumber(v)
    if nu then
        return v:__new(nu*v.x, nu*v.y, nu*v.z, nu*v.w)
    elseif nv then
        return ct(nv*u.x, nv*u.y, nv*u.z, nv*u.w)
    else
        error("ImVec4 can only be multipliead by a numerical type.")
    end
end
function ImVec4.__div(u, a)
    a = assert(tonumber(a), "ImVec4 can only be divided by a numerical type.")
    return ct(u.x/a, u.y/a, u.z/a, u.w/a)
end

-- wrap FLT_MIN, FLT_MAX

local FLT_MIN, FLT_MAX = C.igGET_FLT_MIN(), C.igGET_FLT_MAX()
M.FLT_MIN, M.FLT_MAX = FLT_MIN, FLT_MAX

-- handwritten functions

M.ImVector_ImWchar = function()
    jit.off(true)
    local p = C.ImVector_ImWchar_create()
    return ffi.gc(p[0], C.ImVector_ImWchar_destroy)
end

-----------------------
-- BEGIN GENERATED CODE
-----------------------

local ImBitVector = ImBitVector or {}
ImBitVector.__index = ImBitVector
ImBitVector["Clear"] = ImBitVector["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImBitVector_Clear(i1)
    return out
end
ImBitVector["ClearBit"] = ImBitVector["ClearBit"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImBitVector_ClearBit(i1, i2)
    return out
end
ImBitVector["Create"] = ImBitVector["Create"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImBitVector_Create(i1, i2)
    return out
end
ImBitVector["SetBit"] = ImBitVector["SetBit"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImBitVector_SetBit(i1, i2)
    return out
end
ImBitVector["TestBit"] = ImBitVector["TestBit"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImBitVector_TestBit(i1, i2)
    return out
end
M.ImBitVector = ImBitVector
ffi.metatype("ImBitVector", ImBitVector)

local ImColor = ImColor or {}
ImColor.__index = ImColor
ImColor["HSV"] = ImColor["HSV"]  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = 1.0 end
    local out = C.ImColor_HSV(i1, i2, i3, i4)
    return out
end
ImColor["SetHSV"] = ImColor["SetHSV"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = 1.0 end
    local out = C.ImColor_SetHSV(i1, i2, i3, i4, i5)
    return out
end
M.ImColor_Nil = M.ImColor_Nil  or function()
    jit.off(true)
    local p = C.ImColor_ImColor_Nil()
    return ffi.gc(p[0], C.ImColor_destroy)
end
M.ImColor_Float = M.ImColor_Float  or function(i1, i2, i3, i4)
    jit.off(true)
    local p = C.ImColor_ImColor_Float(i1, i2, i3, i4)
    return ffi.gc(p[0], C.ImColor_destroy)
end
M.ImColor_Vec4 = M.ImColor_Vec4  or function(i1)
    jit.off(true)
    local p = C.ImColor_ImColor_Vec4(i1)
    return ffi.gc(p[0], C.ImColor_destroy)
end
M.ImColor_Int = M.ImColor_Int  or function(i1, i2, i3, i4)
    jit.off(true)
    local p = C.ImColor_ImColor_Int(i1, i2, i3, i4)
    return ffi.gc(p[0], C.ImColor_destroy)
end
M.ImColor_U32 = M.ImColor_U32  or function(i1)
    jit.off(true)
    local p = C.ImColor_ImColor_U32(i1)
    return ffi.gc(p[0], C.ImColor_destroy)
end
M.ImColor = ImColor
ffi.metatype("ImColor", ImColor)

local ImDrawCmd = ImDrawCmd or {}
ImDrawCmd.__index = ImDrawCmd
ImDrawCmd["GetTexID"] = ImDrawCmd["GetTexID"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawCmd_GetTexID(i1)
    return out
end
local mt = getmetatable(ImDrawCmd) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImDrawCmd_ImDrawCmd()
    return ffi.gc(p[0], C.ImDrawCmd_destroy)
end
setmetatable(ImDrawCmd, mt)
M.ImDrawCmd = ImDrawCmd
ffi.metatype("ImDrawCmd", ImDrawCmd)

local ImDrawData = ImDrawData or {}
ImDrawData.__index = ImDrawData
ImDrawData["AddDrawList"] = ImDrawData["AddDrawList"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawData_AddDrawList(i1, i2)
    return out
end
ImDrawData["Clear"] = ImDrawData["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawData_Clear(i1)
    return out
end
ImDrawData["DeIndexAllBuffers"] = ImDrawData["DeIndexAllBuffers"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawData_DeIndexAllBuffers(i1)
    return out
end
ImDrawData["ScaleClipRects"] = ImDrawData["ScaleClipRects"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawData_ScaleClipRects(i1, i2)
    return out
end
local mt = getmetatable(ImDrawData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImDrawData_ImDrawData()
    return ffi.gc(p[0], C.ImDrawData_destroy)
end
setmetatable(ImDrawData, mt)
M.ImDrawData = ImDrawData
ffi.metatype("ImDrawData", ImDrawData)

local ImDrawDataBuilder = ImDrawDataBuilder or {}
ImDrawDataBuilder.__index = ImDrawDataBuilder
local mt = getmetatable(ImDrawDataBuilder) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImDrawDataBuilder_ImDrawDataBuilder()
    return ffi.gc(p[0], C.ImDrawDataBuilder_destroy)
end
setmetatable(ImDrawDataBuilder, mt)
M.ImDrawDataBuilder = ImDrawDataBuilder
ffi.metatype("ImDrawDataBuilder", ImDrawDataBuilder)

local ImDrawList = ImDrawList or {}
ImDrawList.__index = ImDrawList
ImDrawList["AddBezierCubic"] = ImDrawList["AddBezierCubic"]  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i8 == nil then i8 = 0 end
    local out = C.ImDrawList_AddBezierCubic(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
ImDrawList["AddBezierQuadratic"] = ImDrawList["AddBezierQuadratic"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i7 == nil then i7 = 0 end
    local out = C.ImDrawList_AddBezierQuadratic(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["AddCallback"] = ImDrawList["AddCallback"]  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    if not ffi.istype("ImDrawCallback", i2) then
        local str = string.format("LCb#%p", i2)
        _common.callbacks[str] = i2
        i2 = ffi.cast("ImDrawCallback", str)
    end
    local out = C.ImDrawList_AddCallback(i1, i2, i3, i4)
    return out
end
ImDrawList["AddCircle"] = ImDrawList["AddCircle"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    if i6 == nil then i6 = 1.0 end
    local out = C.ImDrawList_AddCircle(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddCircleFilled"] = ImDrawList["AddCircleFilled"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    local out = C.ImDrawList_AddCircleFilled(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["AddConcavePolyFilled"] = ImDrawList["AddConcavePolyFilled"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImDrawList_AddConcavePolyFilled(i1, i2, i3, i4)
    return out
end
ImDrawList["AddConvexPolyFilled"] = ImDrawList["AddConvexPolyFilled"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImDrawList_AddConvexPolyFilled(i1, i2, i3, i4)
    return out
end
ImDrawList["AddDrawCmd"] = ImDrawList["AddDrawCmd"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_AddDrawCmd(i1)
    return out
end
ImDrawList["AddEllipse"] = ImDrawList["AddEllipse"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = 0 end
    if i7 == nil then i7 = 1.0 end
    local out = C.ImDrawList_AddEllipse(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["AddEllipseFilled"] = ImDrawList["AddEllipseFilled"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = 0 end
    local out = C.ImDrawList_AddEllipseFilled(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddImage"] = ImDrawList["AddImage"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i5 == nil then i5 = M.ImVec2_Float(0, 0) end
    if i6 == nil then i6 = M.ImVec2_Float(1, 1) end
    if i7 == nil then i7 = 4294967295 end
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.ImDrawList_AddImage(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["AddImageQuad"] = ImDrawList["AddImageQuad"]  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11)
    jit.off(true)
    if i7 == nil then i7 = M.ImVec2_Float(0, 0) end
    if i8 == nil then i8 = M.ImVec2_Float(1, 0) end
    if i9 == nil then i9 = M.ImVec2_Float(1, 1) end
    if i10 == nil then i10 = M.ImVec2_Float(0, 1) end
    if i11 == nil then i11 = 4294967295 end
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.ImDrawList_AddImageQuad(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11)
    return out
end
ImDrawList["AddImageRounded"] = ImDrawList["AddImageRounded"]  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i9 == nil then i9 = 0 end
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.ImDrawList_AddImageRounded(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
ImDrawList["AddLine"] = ImDrawList["AddLine"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = 1.0 end
    local out = C.ImDrawList_AddLine(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["AddLineH"] = ImDrawList["AddLineH"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 1.0 end
    local out = C.ImDrawList_AddLineH(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddLineV"] = ImDrawList["AddLineV"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 1.0 end
    local out = C.ImDrawList_AddLineV(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddNgon"] = ImDrawList["AddNgon"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 1.0 end
    local out = C.ImDrawList_AddNgon(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddNgonFilled"] = ImDrawList["AddNgonFilled"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.ImDrawList_AddNgonFilled(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["AddPolyline"] = ImDrawList["AddPolyline"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 0 end
    local out = C.ImDrawList_AddPolyline(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddQuad"] = ImDrawList["AddQuad"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i7 == nil then i7 = 1.0 end
    local out = C.ImDrawList_AddQuad(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["AddQuadFilled"] = ImDrawList["AddQuadFilled"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.ImDrawList_AddQuadFilled(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddRect"] = ImDrawList["AddRect"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = 1.0 end
    if i7 == nil then i7 = 0 end
    local out = C.ImDrawList_AddRect(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["AddRectFilled"] = ImDrawList["AddRectFilled"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = 0 end
    local out = C.ImDrawList_AddRectFilled(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddRectFilledMultiColor"] = ImDrawList["AddRectFilledMultiColor"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.ImDrawList_AddRectFilledMultiColor(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["AddText_Vec2"] = ImDrawList["AddText_Vec2"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.ImDrawList_AddText_Vec2(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["AddText_FontPtr"] = ImDrawList["AddText_FontPtr"]  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i8 == nil then i8 = 0.0 end
    local out = C.ImDrawList_AddText_FontPtr(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
ImDrawList["AddTriangle"] = ImDrawList["AddTriangle"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 1.0 end
    local out = C.ImDrawList_AddTriangle(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["AddTriangleFilled"] = ImDrawList["AddTriangleFilled"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.ImDrawList_AddTriangleFilled(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["ChannelsMerge"] = ImDrawList["ChannelsMerge"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_ChannelsMerge(i1)
    return out
end
ImDrawList["ChannelsSetCurrent"] = ImDrawList["ChannelsSetCurrent"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_ChannelsSetCurrent(i1, i2)
    return out
end
ImDrawList["ChannelsSplit"] = ImDrawList["ChannelsSplit"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_ChannelsSplit(i1, i2)
    return out
end
ImDrawList["CloneOutput"] = ImDrawList["CloneOutput"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_CloneOutput(i1)
    return out
end
ImDrawList["GetClipRectMax"] = ImDrawList["GetClipRectMax"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_GetClipRectMax(i1)
    return out
end
ImDrawList["GetClipRectMin"] = ImDrawList["GetClipRectMin"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_GetClipRectMin(i1)
    return out
end
ImDrawList["PathArcTo"] = ImDrawList["PathArcTo"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 0 end
    local out = C.ImDrawList_PathArcTo(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["PathArcToFast"] = ImDrawList["PathArcToFast"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.ImDrawList_PathArcToFast(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["PathBezierCubicCurveTo"] = ImDrawList["PathBezierCubicCurveTo"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    local out = C.ImDrawList_PathBezierCubicCurveTo(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["PathBezierQuadraticCurveTo"] = ImDrawList["PathBezierQuadraticCurveTo"]  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    local out = C.ImDrawList_PathBezierQuadraticCurveTo(i1, i2, i3, i4)
    return out
end
ImDrawList["PathClear"] = ImDrawList["PathClear"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_PathClear(i1)
    return out
end
ImDrawList["PathEllipticalArcTo"] = ImDrawList["PathEllipticalArcTo"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i7 == nil then i7 = 0 end
    local out = C.ImDrawList_PathEllipticalArcTo(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImDrawList["PathFillConcave"] = ImDrawList["PathFillConcave"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_PathFillConcave(i1, i2)
    return out
end
ImDrawList["PathFillConvex"] = ImDrawList["PathFillConvex"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_PathFillConvex(i1, i2)
    return out
end
ImDrawList["PathLineTo"] = ImDrawList["PathLineTo"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_PathLineTo(i1, i2)
    return out
end
ImDrawList["PathLineToMergeDuplicate"] = ImDrawList["PathLineToMergeDuplicate"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_PathLineToMergeDuplicate(i1, i2)
    return out
end
ImDrawList["PathRect"] = ImDrawList["PathRect"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = 0 end
    local out = C.ImDrawList_PathRect(i1, i2, i3, i4, i5)
    return out
end
ImDrawList["PathStroke"] = ImDrawList["PathStroke"]  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0 end
    local out = C.ImDrawList_PathStroke(i1, i2, i3, i4)
    return out
end
ImDrawList["PopClipRect"] = ImDrawList["PopClipRect"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_PopClipRect(i1)
    return out
end
ImDrawList["PopTexture"] = ImDrawList["PopTexture"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_PopTexture(i1)
    return out
end
ImDrawList["PrimQuadUV"] = ImDrawList["PrimQuadUV"]  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    jit.off(true)
    local out = C.ImDrawList_PrimQuadUV(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    return out
end
ImDrawList["PrimRect"] = ImDrawList["PrimRect"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImDrawList_PrimRect(i1, i2, i3, i4)
    return out
end
ImDrawList["PrimRectUV"] = ImDrawList["PrimRectUV"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.ImDrawList_PrimRectUV(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["PrimReserve"] = ImDrawList["PrimReserve"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImDrawList_PrimReserve(i1, i2, i3)
    return out
end
ImDrawList["PrimUnreserve"] = ImDrawList["PrimUnreserve"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImDrawList_PrimUnreserve(i1, i2, i3)
    return out
end
ImDrawList["PrimVtx"] = ImDrawList["PrimVtx"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImDrawList_PrimVtx(i1, i2, i3, i4)
    return out
end
ImDrawList["PrimWriteIdx"] = ImDrawList["PrimWriteIdx"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList_PrimWriteIdx(i1, i2)
    return out
end
ImDrawList["PrimWriteVtx"] = ImDrawList["PrimWriteVtx"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImDrawList_PrimWriteVtx(i1, i2, i3, i4)
    return out
end
ImDrawList["PushClipRect"] = ImDrawList["PushClipRect"]  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = false end
    local out = C.ImDrawList_PushClipRect(i1, i2, i3, i4)
    return out
end
ImDrawList["PushClipRectFullScreen"] = ImDrawList["PushClipRectFullScreen"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList_PushClipRectFullScreen(i1)
    return out
end
ImDrawList["PushTexture"] = ImDrawList["PushTexture"]  or function(i1, i2)
    jit.off(true)
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.ImDrawList_PushTexture(i1, i2)
    return out
end
ImDrawList["_CalcCircleAutoSegmentCount"] = ImDrawList["_CalcCircleAutoSegmentCount"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList__CalcCircleAutoSegmentCount(i1, i2)
    return out
end
ImDrawList["_ClearFreeMemory"] = ImDrawList["_ClearFreeMemory"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__ClearFreeMemory(i1)
    return out
end
ImDrawList["_OnChangedClipRect"] = ImDrawList["_OnChangedClipRect"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__OnChangedClipRect(i1)
    return out
end
ImDrawList["_OnChangedTexture"] = ImDrawList["_OnChangedTexture"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__OnChangedTexture(i1)
    return out
end
ImDrawList["_OnChangedVtxOffset"] = ImDrawList["_OnChangedVtxOffset"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__OnChangedVtxOffset(i1)
    return out
end
ImDrawList["_PathArcToFastEx"] = ImDrawList["_PathArcToFastEx"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.ImDrawList__PathArcToFastEx(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["_PathArcToN"] = ImDrawList["_PathArcToN"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.ImDrawList__PathArcToN(i1, i2, i3, i4, i5, i6)
    return out
end
ImDrawList["_PopUnusedDrawCmd"] = ImDrawList["_PopUnusedDrawCmd"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__PopUnusedDrawCmd(i1)
    return out
end
ImDrawList["_ResetForNewFrame"] = ImDrawList["_ResetForNewFrame"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__ResetForNewFrame(i1)
    return out
end
ImDrawList["_SetDrawListSharedData"] = ImDrawList["_SetDrawListSharedData"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawList__SetDrawListSharedData(i1, i2)
    return out
end
ImDrawList["_SetTexture"] = ImDrawList["_SetTexture"]  or function(i1, i2)
    jit.off(true)
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.ImDrawList__SetTexture(i1, i2)
    return out
end
ImDrawList["_TryMergeDrawCmds"] = ImDrawList["_TryMergeDrawCmds"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawList__TryMergeDrawCmds(i1)
    return out
end
local mt = getmetatable(ImDrawList) or {}
mt.__call = mt.__call or function(self, i1)
    jit.off(true)
    local p = C.ImDrawList_ImDrawList(i1)
    return ffi.gc(p[0], C.ImDrawList_destroy)
end
setmetatable(ImDrawList, mt)
M.ImDrawList = ImDrawList
ffi.metatype("ImDrawList", ImDrawList)

local ImDrawListSharedData = ImDrawListSharedData or {}
ImDrawListSharedData.__index = ImDrawListSharedData
ImDrawListSharedData["SetCircleTessellationMaxError"] = ImDrawListSharedData["SetCircleTessellationMaxError"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawListSharedData_SetCircleTessellationMaxError(i1, i2)
    return out
end
local mt = getmetatable(ImDrawListSharedData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImDrawListSharedData_ImDrawListSharedData()
    return ffi.gc(p[0], C.ImDrawListSharedData_destroy)
end
setmetatable(ImDrawListSharedData, mt)
M.ImDrawListSharedData = ImDrawListSharedData
ffi.metatype("ImDrawListSharedData", ImDrawListSharedData)

local ImDrawListSplitter = ImDrawListSplitter or {}
ImDrawListSplitter.__index = ImDrawListSplitter
ImDrawListSplitter["Clear"] = ImDrawListSplitter["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawListSplitter_Clear(i1)
    return out
end
ImDrawListSplitter["ClearFreeMemory"] = ImDrawListSplitter["ClearFreeMemory"]  or function(i1)
    jit.off(true)
    local out = C.ImDrawListSplitter_ClearFreeMemory(i1)
    return out
end
ImDrawListSplitter["Merge"] = ImDrawListSplitter["Merge"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImDrawListSplitter_Merge(i1, i2)
    return out
end
ImDrawListSplitter["SetCurrentChannel"] = ImDrawListSplitter["SetCurrentChannel"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImDrawListSplitter_SetCurrentChannel(i1, i2, i3)
    return out
end
ImDrawListSplitter["Split"] = ImDrawListSplitter["Split"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImDrawListSplitter_Split(i1, i2, i3)
    return out
end
local mt = getmetatable(ImDrawListSplitter) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImDrawListSplitter_ImDrawListSplitter()
    return ffi.gc(p[0], C.ImDrawListSplitter_destroy)
end
setmetatable(ImDrawListSplitter, mt)
M.ImDrawListSplitter = ImDrawListSplitter
ffi.metatype("ImDrawListSplitter", ImDrawListSplitter)

local ImFont = ImFont or {}
ImFont.__index = ImFont
ImFont["AddRemapChar"] = ImFont["AddRemapChar"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImFont_AddRemapChar(i1, i2, i3)
    return out
end
ImFont["CalcTextSizeA"] = ImFont["CalcTextSizeA"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.ImFont_CalcTextSizeA(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImFont["CalcWordWrapPosition"] = ImFont["CalcWordWrapPosition"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.ImFont_CalcWordWrapPosition(i1, i2, i3, i4, i5)
    return out
end
ImFont["ClearOutputData"] = ImFont["ClearOutputData"]  or function(i1)
    jit.off(true)
    local out = C.ImFont_ClearOutputData(i1)
    return out
end
ImFont["GetDebugName"] = ImFont["GetDebugName"]  or function(i1)
    jit.off(true)
    local out = C.ImFont_GetDebugName(i1)
    return out
end
ImFont["GetFontBaked"] = ImFont["GetFontBaked"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = -1.0 end
    local out = C.ImFont_GetFontBaked(i1, i2, i3)
    return out
end
ImFont["IsGlyphInFont"] = ImFont["IsGlyphInFont"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFont_IsGlyphInFont(i1, i2)
    return out
end
ImFont["IsGlyphRangeUnused"] = ImFont["IsGlyphRangeUnused"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImFont_IsGlyphRangeUnused(i1, i2, i3)
    return out
end
ImFont["IsLoaded"] = ImFont["IsLoaded"]  or function(i1)
    jit.off(true)
    local out = C.ImFont_IsLoaded(i1)
    return out
end
ImFont["RenderChar"] = ImFont["RenderChar"]  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.ImFont_RenderChar(i1, i2, i3, i4, i5, i6, i7)
    return out
end
ImFont["RenderText"] = ImFont["RenderText"]  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    jit.off(true)
    if i9 == nil then i9 = 0.0 end
    if i10 == nil then i10 = 0 end
    local out = C.ImFont_RenderText(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    return out
end
local mt = getmetatable(ImFont) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFont_ImFont()
    return ffi.gc(p[0], C.ImFont_destroy)
end
setmetatable(ImFont, mt)
M.ImFont = ImFont
ffi.metatype("ImFont", ImFont)

local ImFontAtlas = ImFontAtlas or {}
ImFontAtlas.__index = ImFontAtlas
ImFontAtlas["AddCustomRect"] = ImFontAtlas["AddCustomRect"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImFontAtlas_AddCustomRect(i1, i2, i3, i4)
    return out
end
ImFontAtlas["AddFont"] = ImFontAtlas["AddFont"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_AddFont(i1, i2)
    return out
end
ImFontAtlas["AddFontDefault"] = ImFontAtlas["AddFontDefault"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_AddFontDefault(i1, i2)
    return out
end
ImFontAtlas["AddFontDefaultBitmap"] = ImFontAtlas["AddFontDefaultBitmap"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_AddFontDefaultBitmap(i1, i2)
    return out
end
ImFontAtlas["AddFontDefaultVector"] = ImFontAtlas["AddFontDefaultVector"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_AddFontDefaultVector(i1, i2)
    return out
end
ImFontAtlas["AddFontFromFileTTF"] = ImFontAtlas["AddFontFromFileTTF"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    local out = C.ImFontAtlas_AddFontFromFileTTF(i1, i2, i3, i4, i5)
    return out
end
ImFontAtlas["AddFontFromMemoryCompressedBase85TTF"] = ImFontAtlas["AddFontFromMemoryCompressedBase85TTF"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    local out = C.ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(i1, i2, i3, i4, i5)
    return out
end
ImFontAtlas["AddFontFromMemoryCompressedTTF"] = ImFontAtlas["AddFontFromMemoryCompressedTTF"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i4 == nil then i4 = 0.0 end
    local out = C.ImFontAtlas_AddFontFromMemoryCompressedTTF(i1, i2, i3, i4, i5, i6)
    return out
end
ImFontAtlas["AddFontFromMemoryTTF"] = ImFontAtlas["AddFontFromMemoryTTF"]  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i4 == nil then i4 = 0.0 end
    local out = C.ImFontAtlas_AddFontFromMemoryTTF(i1, i2, i3, i4, i5, i6)
    return out
end
ImFontAtlas["Clear"] = ImFontAtlas["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImFontAtlas_Clear(i1)
    return out
end
ImFontAtlas["ClearFonts"] = ImFontAtlas["ClearFonts"]  or function(i1)
    jit.off(true)
    local out = C.ImFontAtlas_ClearFonts(i1)
    return out
end
ImFontAtlas["ClearInputData"] = ImFontAtlas["ClearInputData"]  or function(i1)
    jit.off(true)
    local out = C.ImFontAtlas_ClearInputData(i1)
    return out
end
ImFontAtlas["ClearTexData"] = ImFontAtlas["ClearTexData"]  or function(i1)
    jit.off(true)
    local out = C.ImFontAtlas_ClearTexData(i1)
    return out
end
ImFontAtlas["CompactCache"] = ImFontAtlas["CompactCache"]  or function(i1)
    jit.off(true)
    local out = C.ImFontAtlas_CompactCache(i1)
    return out
end
ImFontAtlas["GetCustomRect"] = ImFontAtlas["GetCustomRect"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImFontAtlas_GetCustomRect(i1, i2, i3)
    return out
end
ImFontAtlas["GetGlyphRangesDefault"] = ImFontAtlas["GetGlyphRangesDefault"]  or function(i1)
    jit.off(true)
    local out = C.ImFontAtlas_GetGlyphRangesDefault(i1)
    return out
end
ImFontAtlas["RemoveCustomRect"] = ImFontAtlas["RemoveCustomRect"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_RemoveCustomRect(i1, i2)
    return out
end
ImFontAtlas["RemoveFont"] = ImFontAtlas["RemoveFont"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_RemoveFont(i1, i2)
    return out
end
ImFontAtlas["SetFontLoader"] = ImFontAtlas["SetFontLoader"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontAtlas_SetFontLoader(i1, i2)
    return out
end
local mt = getmetatable(ImFontAtlas) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontAtlas_ImFontAtlas()
    return ffi.gc(p[0], C.ImFontAtlas_destroy)
end
setmetatable(ImFontAtlas, mt)
M.ImFontAtlas = ImFontAtlas
ffi.metatype("ImFontAtlas", ImFontAtlas)

local ImFontAtlasBuilder = ImFontAtlasBuilder or {}
ImFontAtlasBuilder.__index = ImFontAtlasBuilder
local mt = getmetatable(ImFontAtlasBuilder) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontAtlasBuilder_ImFontAtlasBuilder()
    return ffi.gc(p[0], C.ImFontAtlasBuilder_destroy)
end
setmetatable(ImFontAtlasBuilder, mt)
M.ImFontAtlasBuilder = ImFontAtlasBuilder
ffi.metatype("ImFontAtlasBuilder", ImFontAtlasBuilder)

local ImFontAtlasRect = ImFontAtlasRect or {}
ImFontAtlasRect.__index = ImFontAtlasRect
local mt = getmetatable(ImFontAtlasRect) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontAtlasRect_ImFontAtlasRect()
    return ffi.gc(p[0], C.ImFontAtlasRect_destroy)
end
setmetatable(ImFontAtlasRect, mt)
M.ImFontAtlasRect = ImFontAtlasRect
ffi.metatype("ImFontAtlasRect", ImFontAtlasRect)

local ImFontBaked = ImFontBaked or {}
ImFontBaked.__index = ImFontBaked
ImFontBaked["ClearOutputData"] = ImFontBaked["ClearOutputData"]  or function(i1)
    jit.off(true)
    local out = C.ImFontBaked_ClearOutputData(i1)
    return out
end
ImFontBaked["FindGlyph"] = ImFontBaked["FindGlyph"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontBaked_FindGlyph(i1, i2)
    return out
end
ImFontBaked["FindGlyphNoFallback"] = ImFontBaked["FindGlyphNoFallback"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontBaked_FindGlyphNoFallback(i1, i2)
    return out
end
ImFontBaked["GetCharAdvance"] = ImFontBaked["GetCharAdvance"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontBaked_GetCharAdvance(i1, i2)
    return out
end
ImFontBaked["IsGlyphLoaded"] = ImFontBaked["IsGlyphLoaded"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontBaked_IsGlyphLoaded(i1, i2)
    return out
end
local mt = getmetatable(ImFontBaked) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontBaked_ImFontBaked()
    return ffi.gc(p[0], C.ImFontBaked_destroy)
end
setmetatable(ImFontBaked, mt)
M.ImFontBaked = ImFontBaked
ffi.metatype("ImFontBaked", ImFontBaked)

local ImFontConfig = ImFontConfig or {}
ImFontConfig.__index = ImFontConfig
local mt = getmetatable(ImFontConfig) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontConfig_ImFontConfig()
    return ffi.gc(p[0], C.ImFontConfig_destroy)
end
setmetatable(ImFontConfig, mt)
M.ImFontConfig = ImFontConfig
ffi.metatype("ImFontConfig", ImFontConfig)

local ImFontGlyph = ImFontGlyph or {}
ImFontGlyph.__index = ImFontGlyph
local mt = getmetatable(ImFontGlyph) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontGlyph_ImFontGlyph()
    return ffi.gc(p[0], C.ImFontGlyph_destroy)
end
setmetatable(ImFontGlyph, mt)
M.ImFontGlyph = ImFontGlyph
ffi.metatype("ImFontGlyph", ImFontGlyph)

local ImFontGlyphRangesBuilder = ImFontGlyphRangesBuilder or {}
ImFontGlyphRangesBuilder.__index = ImFontGlyphRangesBuilder
ImFontGlyphRangesBuilder["AddChar"] = ImFontGlyphRangesBuilder["AddChar"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontGlyphRangesBuilder_AddChar(i1, i2)
    return out
end
ImFontGlyphRangesBuilder["AddRanges"] = ImFontGlyphRangesBuilder["AddRanges"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontGlyphRangesBuilder_AddRanges(i1, i2)
    return out
end
ImFontGlyphRangesBuilder["AddText"] = ImFontGlyphRangesBuilder["AddText"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImFontGlyphRangesBuilder_AddText(i1, i2, i3)
    return out
end
ImFontGlyphRangesBuilder["BuildRanges"] = ImFontGlyphRangesBuilder["BuildRanges"]  or function(i1)
    jit.off(true)
    local o1 = M.ImVector_ImWchar()
    local out = C.ImFontGlyphRangesBuilder_BuildRanges(i1, o1)
    return o1, out
end
ImFontGlyphRangesBuilder["Clear"] = ImFontGlyphRangesBuilder["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImFontGlyphRangesBuilder_Clear(i1)
    return out
end
ImFontGlyphRangesBuilder["GetBit"] = ImFontGlyphRangesBuilder["GetBit"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontGlyphRangesBuilder_GetBit(i1, i2)
    return out
end
ImFontGlyphRangesBuilder["SetBit"] = ImFontGlyphRangesBuilder["SetBit"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImFontGlyphRangesBuilder_SetBit(i1, i2)
    return out
end
local mt = getmetatable(ImFontGlyphRangesBuilder) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder()
    return ffi.gc(p[0], C.ImFontGlyphRangesBuilder_destroy)
end
setmetatable(ImFontGlyphRangesBuilder, mt)
M.ImFontGlyphRangesBuilder = ImFontGlyphRangesBuilder
ffi.metatype("ImFontGlyphRangesBuilder", ImFontGlyphRangesBuilder)

local ImFontLoader = ImFontLoader or {}
ImFontLoader.__index = ImFontLoader
local mt = getmetatable(ImFontLoader) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImFontLoader_ImFontLoader()
    return ffi.gc(p[0], C.ImFontLoader_destroy)
end
setmetatable(ImFontLoader, mt)
M.ImFontLoader = ImFontLoader
ffi.metatype("ImFontLoader", ImFontLoader)

local ImGuiBoxSelectState = ImGuiBoxSelectState or {}
ImGuiBoxSelectState.__index = ImGuiBoxSelectState
local mt = getmetatable(ImGuiBoxSelectState) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiBoxSelectState_ImGuiBoxSelectState()
    return ffi.gc(p[0], C.ImGuiBoxSelectState_destroy)
end
setmetatable(ImGuiBoxSelectState, mt)
M.ImGuiBoxSelectState = ImGuiBoxSelectState
ffi.metatype("ImGuiBoxSelectState", ImGuiBoxSelectState)

local ImGuiComboPreviewData = ImGuiComboPreviewData or {}
ImGuiComboPreviewData.__index = ImGuiComboPreviewData
local mt = getmetatable(ImGuiComboPreviewData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiComboPreviewData_ImGuiComboPreviewData()
    return ffi.gc(p[0], C.ImGuiComboPreviewData_destroy)
end
setmetatable(ImGuiComboPreviewData, mt)
M.ImGuiComboPreviewData = ImGuiComboPreviewData
ffi.metatype("ImGuiComboPreviewData", ImGuiComboPreviewData)

local ImGuiContext = ImGuiContext or {}
ImGuiContext.__index = ImGuiContext
local mt = getmetatable(ImGuiContext) or {}
mt.__call = mt.__call or function(self, i1)
    jit.off(true)
    local p = C.ImGuiContext_ImGuiContext(i1)
    return ffi.gc(p[0], C.ImGuiContext_destroy)
end
setmetatable(ImGuiContext, mt)
M.ImGuiContext = ImGuiContext
ffi.metatype("ImGuiContext", ImGuiContext)

local ImGuiContextHook = ImGuiContextHook or {}
ImGuiContextHook.__index = ImGuiContextHook
local mt = getmetatable(ImGuiContextHook) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiContextHook_ImGuiContextHook()
    return ffi.gc(p[0], C.ImGuiContextHook_destroy)
end
setmetatable(ImGuiContextHook, mt)
M.ImGuiContextHook = ImGuiContextHook
ffi.metatype("ImGuiContextHook", ImGuiContextHook)

local ImGuiDebugAllocInfo = ImGuiDebugAllocInfo or {}
ImGuiDebugAllocInfo.__index = ImGuiDebugAllocInfo
local mt = getmetatable(ImGuiDebugAllocInfo) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiDebugAllocInfo_ImGuiDebugAllocInfo()
    return ffi.gc(p[0], C.ImGuiDebugAllocInfo_destroy)
end
setmetatable(ImGuiDebugAllocInfo, mt)
M.ImGuiDebugAllocInfo = ImGuiDebugAllocInfo
ffi.metatype("ImGuiDebugAllocInfo", ImGuiDebugAllocInfo)

local ImGuiDebugItemPathQuery = ImGuiDebugItemPathQuery or {}
ImGuiDebugItemPathQuery.__index = ImGuiDebugItemPathQuery
local mt = getmetatable(ImGuiDebugItemPathQuery) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiDebugItemPathQuery_ImGuiDebugItemPathQuery()
    return ffi.gc(p[0], C.ImGuiDebugItemPathQuery_destroy)
end
setmetatable(ImGuiDebugItemPathQuery, mt)
M.ImGuiDebugItemPathQuery = ImGuiDebugItemPathQuery
ffi.metatype("ImGuiDebugItemPathQuery", ImGuiDebugItemPathQuery)

local ImGuiErrorRecoveryState = ImGuiErrorRecoveryState or {}
ImGuiErrorRecoveryState.__index = ImGuiErrorRecoveryState
local mt = getmetatable(ImGuiErrorRecoveryState) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiErrorRecoveryState_ImGuiErrorRecoveryState()
    return ffi.gc(p[0], C.ImGuiErrorRecoveryState_destroy)
end
setmetatable(ImGuiErrorRecoveryState, mt)
M.ImGuiErrorRecoveryState = ImGuiErrorRecoveryState
ffi.metatype("ImGuiErrorRecoveryState", ImGuiErrorRecoveryState)

local ImGuiIDStackTool = ImGuiIDStackTool or {}
ImGuiIDStackTool.__index = ImGuiIDStackTool
local mt = getmetatable(ImGuiIDStackTool) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiIDStackTool_ImGuiIDStackTool()
    return ffi.gc(p[0], C.ImGuiIDStackTool_destroy)
end
setmetatable(ImGuiIDStackTool, mt)
M.ImGuiIDStackTool = ImGuiIDStackTool
ffi.metatype("ImGuiIDStackTool", ImGuiIDStackTool)

local ImGuiIO = ImGuiIO or {}
ImGuiIO.__index = ImGuiIO
ImGuiIO["AddFocusEvent"] = ImGuiIO["AddFocusEvent"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiIO_AddFocusEvent(i1, i2)
    return out
end
ImGuiIO["AddInputCharacter"] = ImGuiIO["AddInputCharacter"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiIO_AddInputCharacter(i1, i2)
    return out
end
ImGuiIO["AddInputCharacterUTF16"] = ImGuiIO["AddInputCharacterUTF16"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiIO_AddInputCharacterUTF16(i1, i2)
    return out
end
ImGuiIO["AddInputCharactersUTF8"] = ImGuiIO["AddInputCharactersUTF8"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiIO_AddInputCharactersUTF8(i1, i2)
    return out
end
ImGuiIO["AddKeyAnalogEvent"] = ImGuiIO["AddKeyAnalogEvent"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImGuiIO_AddKeyAnalogEvent(i1, i2, i3, i4)
    return out
end
ImGuiIO["AddKeyEvent"] = ImGuiIO["AddKeyEvent"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiIO_AddKeyEvent(i1, i2, i3)
    return out
end
ImGuiIO["AddMouseButtonEvent"] = ImGuiIO["AddMouseButtonEvent"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiIO_AddMouseButtonEvent(i1, i2, i3)
    return out
end
ImGuiIO["AddMousePosEvent"] = ImGuiIO["AddMousePosEvent"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiIO_AddMousePosEvent(i1, i2, i3)
    return out
end
ImGuiIO["AddMouseSourceEvent"] = ImGuiIO["AddMouseSourceEvent"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiIO_AddMouseSourceEvent(i1, i2)
    return out
end
ImGuiIO["AddMouseWheelEvent"] = ImGuiIO["AddMouseWheelEvent"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiIO_AddMouseWheelEvent(i1, i2, i3)
    return out
end
ImGuiIO["ClearEventsQueue"] = ImGuiIO["ClearEventsQueue"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiIO_ClearEventsQueue(i1)
    return out
end
ImGuiIO["ClearInputKeys"] = ImGuiIO["ClearInputKeys"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiIO_ClearInputKeys(i1)
    return out
end
ImGuiIO["ClearInputMouse"] = ImGuiIO["ClearInputMouse"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiIO_ClearInputMouse(i1)
    return out
end
ImGuiIO["SetAppAcceptingEvents"] = ImGuiIO["SetAppAcceptingEvents"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiIO_SetAppAcceptingEvents(i1, i2)
    return out
end
ImGuiIO["SetKeyEventNativeData"] = ImGuiIO["SetKeyEventNativeData"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = -1 end
    local out = C.ImGuiIO_SetKeyEventNativeData(i1, i2, i3, i4, i5)
    return out
end
local mt = getmetatable(ImGuiIO) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiIO_ImGuiIO()
    return ffi.gc(p[0], C.ImGuiIO_destroy)
end
setmetatable(ImGuiIO, mt)
M.ImGuiIO = ImGuiIO
ffi.metatype("ImGuiIO", ImGuiIO)

local ImGuiInputEvent = ImGuiInputEvent or {}
ImGuiInputEvent.__index = ImGuiInputEvent
local mt = getmetatable(ImGuiInputEvent) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiInputEvent_ImGuiInputEvent()
    return ffi.gc(p[0], C.ImGuiInputEvent_destroy)
end
setmetatable(ImGuiInputEvent, mt)
M.ImGuiInputEvent = ImGuiInputEvent
ffi.metatype("ImGuiInputEvent", ImGuiInputEvent)

local ImGuiInputTextCallbackData = ImGuiInputTextCallbackData or {}
ImGuiInputTextCallbackData.__index = ImGuiInputTextCallbackData
ImGuiInputTextCallbackData["ClearSelection"] = ImGuiInputTextCallbackData["ClearSelection"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextCallbackData_ClearSelection(i1)
    return out
end
ImGuiInputTextCallbackData["DeleteChars"] = ImGuiInputTextCallbackData["DeleteChars"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiInputTextCallbackData_DeleteChars(i1, i2, i3)
    return out
end
ImGuiInputTextCallbackData["HasSelection"] = ImGuiInputTextCallbackData["HasSelection"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextCallbackData_HasSelection(i1)
    return out
end
ImGuiInputTextCallbackData["InsertChars"] = ImGuiInputTextCallbackData["InsertChars"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImGuiInputTextCallbackData_InsertChars(i1, i2, i3, i4)
    return out
end
ImGuiInputTextCallbackData["SelectAll"] = ImGuiInputTextCallbackData["SelectAll"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextCallbackData_SelectAll(i1)
    return out
end
ImGuiInputTextCallbackData["SetSelection"] = ImGuiInputTextCallbackData["SetSelection"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiInputTextCallbackData_SetSelection(i1, i2, i3)
    return out
end
local mt = getmetatable(ImGuiInputTextCallbackData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiInputTextCallbackData_ImGuiInputTextCallbackData()
    return ffi.gc(p[0], C.ImGuiInputTextCallbackData_destroy)
end
setmetatable(ImGuiInputTextCallbackData, mt)
M.ImGuiInputTextCallbackData = ImGuiInputTextCallbackData
ffi.metatype("ImGuiInputTextCallbackData", ImGuiInputTextCallbackData)

local ImGuiInputTextDeactivatedState = ImGuiInputTextDeactivatedState or {}
ImGuiInputTextDeactivatedState.__index = ImGuiInputTextDeactivatedState
ImGuiInputTextDeactivatedState["ClearFreeMemory"] = ImGuiInputTextDeactivatedState["ClearFreeMemory"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextDeactivatedState_ClearFreeMemory(i1)
    return out
end
local mt = getmetatable(ImGuiInputTextDeactivatedState) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState()
    return ffi.gc(p[0], C.ImGuiInputTextDeactivatedState_destroy)
end
setmetatable(ImGuiInputTextDeactivatedState, mt)
M.ImGuiInputTextDeactivatedState = ImGuiInputTextDeactivatedState
ffi.metatype("ImGuiInputTextDeactivatedState", ImGuiInputTextDeactivatedState)

local ImGuiInputTextState = ImGuiInputTextState or {}
ImGuiInputTextState.__index = ImGuiInputTextState
ImGuiInputTextState["ClearFreeMemory"] = ImGuiInputTextState["ClearFreeMemory"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_ClearFreeMemory(i1)
    return out
end
ImGuiInputTextState["ClearSelection"] = ImGuiInputTextState["ClearSelection"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_ClearSelection(i1)
    return out
end
ImGuiInputTextState["ClearText"] = ImGuiInputTextState["ClearText"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_ClearText(i1)
    return out
end
ImGuiInputTextState["CursorAnimReset"] = ImGuiInputTextState["CursorAnimReset"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_CursorAnimReset(i1)
    return out
end
ImGuiInputTextState["CursorClamp"] = ImGuiInputTextState["CursorClamp"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_CursorClamp(i1)
    return out
end
ImGuiInputTextState["GetCursorPos"] = ImGuiInputTextState["GetCursorPos"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_GetCursorPos(i1)
    return out
end
ImGuiInputTextState["GetPreferredOffsetX"] = ImGuiInputTextState["GetPreferredOffsetX"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_GetPreferredOffsetX(i1)
    return out
end
ImGuiInputTextState["GetSelectionEnd"] = ImGuiInputTextState["GetSelectionEnd"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_GetSelectionEnd(i1)
    return out
end
ImGuiInputTextState["GetSelectionStart"] = ImGuiInputTextState["GetSelectionStart"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_GetSelectionStart(i1)
    return out
end
ImGuiInputTextState["GetText"] = ImGuiInputTextState["GetText"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_GetText(i1)
    return out
end
ImGuiInputTextState["HasSelection"] = ImGuiInputTextState["HasSelection"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_HasSelection(i1)
    return out
end
ImGuiInputTextState["OnCharPressed"] = ImGuiInputTextState["OnCharPressed"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiInputTextState_OnCharPressed(i1, i2)
    return out
end
ImGuiInputTextState["OnKeyPressed"] = ImGuiInputTextState["OnKeyPressed"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiInputTextState_OnKeyPressed(i1, i2)
    return out
end
ImGuiInputTextState["ReloadUserBufAndKeepSelection"] = ImGuiInputTextState["ReloadUserBufAndKeepSelection"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_ReloadUserBufAndKeepSelection(i1)
    return out
end
ImGuiInputTextState["ReloadUserBufAndMoveToEnd"] = ImGuiInputTextState["ReloadUserBufAndMoveToEnd"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_ReloadUserBufAndMoveToEnd(i1)
    return out
end
ImGuiInputTextState["ReloadUserBufAndSelectAll"] = ImGuiInputTextState["ReloadUserBufAndSelectAll"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_ReloadUserBufAndSelectAll(i1)
    return out
end
ImGuiInputTextState["SelectAll"] = ImGuiInputTextState["SelectAll"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiInputTextState_SelectAll(i1)
    return out
end
ImGuiInputTextState["SetSelection"] = ImGuiInputTextState["SetSelection"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiInputTextState_SetSelection(i1, i2, i3)
    return out
end
local mt = getmetatable(ImGuiInputTextState) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiInputTextState_ImGuiInputTextState()
    return ffi.gc(p[0], C.ImGuiInputTextState_destroy)
end
setmetatable(ImGuiInputTextState, mt)
M.ImGuiInputTextState = ImGuiInputTextState
ffi.metatype("ImGuiInputTextState", ImGuiInputTextState)

local ImGuiKeyOwnerData = ImGuiKeyOwnerData or {}
ImGuiKeyOwnerData.__index = ImGuiKeyOwnerData
local mt = getmetatable(ImGuiKeyOwnerData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiKeyOwnerData_ImGuiKeyOwnerData()
    return ffi.gc(p[0], C.ImGuiKeyOwnerData_destroy)
end
setmetatable(ImGuiKeyOwnerData, mt)
M.ImGuiKeyOwnerData = ImGuiKeyOwnerData
ffi.metatype("ImGuiKeyOwnerData", ImGuiKeyOwnerData)

local ImGuiKeyRoutingData = ImGuiKeyRoutingData or {}
ImGuiKeyRoutingData.__index = ImGuiKeyRoutingData
local mt = getmetatable(ImGuiKeyRoutingData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiKeyRoutingData_ImGuiKeyRoutingData()
    return ffi.gc(p[0], C.ImGuiKeyRoutingData_destroy)
end
setmetatable(ImGuiKeyRoutingData, mt)
M.ImGuiKeyRoutingData = ImGuiKeyRoutingData
ffi.metatype("ImGuiKeyRoutingData", ImGuiKeyRoutingData)

local ImGuiKeyRoutingTable = ImGuiKeyRoutingTable or {}
ImGuiKeyRoutingTable.__index = ImGuiKeyRoutingTable
ImGuiKeyRoutingTable["Clear"] = ImGuiKeyRoutingTable["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiKeyRoutingTable_Clear(i1)
    return out
end
local mt = getmetatable(ImGuiKeyRoutingTable) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiKeyRoutingTable_ImGuiKeyRoutingTable()
    return ffi.gc(p[0], C.ImGuiKeyRoutingTable_destroy)
end
setmetatable(ImGuiKeyRoutingTable, mt)
M.ImGuiKeyRoutingTable = ImGuiKeyRoutingTable
ffi.metatype("ImGuiKeyRoutingTable", ImGuiKeyRoutingTable)

local ImGuiLastItemData = ImGuiLastItemData or {}
ImGuiLastItemData.__index = ImGuiLastItemData
local mt = getmetatable(ImGuiLastItemData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiLastItemData_ImGuiLastItemData()
    return ffi.gc(p[0], C.ImGuiLastItemData_destroy)
end
setmetatable(ImGuiLastItemData, mt)
M.ImGuiLastItemData = ImGuiLastItemData
ffi.metatype("ImGuiLastItemData", ImGuiLastItemData)

local ImGuiListClipper = ImGuiListClipper or {}
ImGuiListClipper.__index = ImGuiListClipper
ImGuiListClipper["Begin"] = ImGuiListClipper["Begin"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = -1.0 end
    local out = C.ImGuiListClipper_Begin(i1, i2, i3)
    return out
end
ImGuiListClipper["End"] = ImGuiListClipper["End"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiListClipper_End(i1)
    return out
end
ImGuiListClipper["IncludeItemByIndex"] = ImGuiListClipper["IncludeItemByIndex"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiListClipper_IncludeItemByIndex(i1, i2)
    return out
end
ImGuiListClipper["IncludeItemsByIndex"] = ImGuiListClipper["IncludeItemsByIndex"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiListClipper_IncludeItemsByIndex(i1, i2, i3)
    return out
end
ImGuiListClipper["SeekCursorForItem"] = ImGuiListClipper["SeekCursorForItem"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiListClipper_SeekCursorForItem(i1, i2)
    return out
end
ImGuiListClipper["Step"] = ImGuiListClipper["Step"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiListClipper_Step(i1)
    return out
end
local mt = getmetatable(ImGuiListClipper) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiListClipper_ImGuiListClipper()
    return ffi.gc(p[0], C.ImGuiListClipper_destroy)
end
setmetatable(ImGuiListClipper, mt)
M.ImGuiListClipper = ImGuiListClipper
ffi.metatype("ImGuiListClipper", ImGuiListClipper)

local ImGuiListClipperData = ImGuiListClipperData or {}
ImGuiListClipperData.__index = ImGuiListClipperData
ImGuiListClipperData["Reset"] = ImGuiListClipperData["Reset"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiListClipperData_Reset(i1, i2)
    return out
end
local mt = getmetatable(ImGuiListClipperData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiListClipperData_ImGuiListClipperData()
    return ffi.gc(p[0], C.ImGuiListClipperData_destroy)
end
setmetatable(ImGuiListClipperData, mt)
M.ImGuiListClipperData = ImGuiListClipperData
ffi.metatype("ImGuiListClipperData", ImGuiListClipperData)

local ImGuiListClipperRange = ImGuiListClipperRange or {}
ImGuiListClipperRange.__index = ImGuiListClipperRange
ImGuiListClipperRange["FromIndices"] = ImGuiListClipperRange["FromIndices"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiListClipperRange_FromIndices(i1, i2)
    return out
end
ImGuiListClipperRange["FromPositions"] = ImGuiListClipperRange["FromPositions"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImGuiListClipperRange_FromPositions(i1, i2, i3, i4)
    return out
end
M.ImGuiListClipperRange = ImGuiListClipperRange
ffi.metatype("ImGuiListClipperRange", ImGuiListClipperRange)

local ImGuiMenuColumns = ImGuiMenuColumns or {}
ImGuiMenuColumns.__index = ImGuiMenuColumns
ImGuiMenuColumns["CalcNextTotalWidth"] = ImGuiMenuColumns["CalcNextTotalWidth"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiMenuColumns_CalcNextTotalWidth(i1, i2)
    return out
end
ImGuiMenuColumns["DeclColumns"] = ImGuiMenuColumns["DeclColumns"]  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.ImGuiMenuColumns_DeclColumns(i1, i2, i3, i4, i5)
    return out
end
ImGuiMenuColumns["Update"] = ImGuiMenuColumns["Update"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiMenuColumns_Update(i1, i2, i3)
    return out
end
local mt = getmetatable(ImGuiMenuColumns) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiMenuColumns_ImGuiMenuColumns()
    return ffi.gc(p[0], C.ImGuiMenuColumns_destroy)
end
setmetatable(ImGuiMenuColumns, mt)
M.ImGuiMenuColumns = ImGuiMenuColumns
ffi.metatype("ImGuiMenuColumns", ImGuiMenuColumns)

local ImGuiMultiSelectState = ImGuiMultiSelectState or {}
ImGuiMultiSelectState.__index = ImGuiMultiSelectState
local mt = getmetatable(ImGuiMultiSelectState) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiMultiSelectState_ImGuiMultiSelectState()
    return ffi.gc(p[0], C.ImGuiMultiSelectState_destroy)
end
setmetatable(ImGuiMultiSelectState, mt)
M.ImGuiMultiSelectState = ImGuiMultiSelectState
ffi.metatype("ImGuiMultiSelectState", ImGuiMultiSelectState)

local ImGuiMultiSelectTempData = ImGuiMultiSelectTempData or {}
ImGuiMultiSelectTempData.__index = ImGuiMultiSelectTempData
ImGuiMultiSelectTempData["Clear"] = ImGuiMultiSelectTempData["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiMultiSelectTempData_Clear(i1)
    return out
end
ImGuiMultiSelectTempData["ClearIO"] = ImGuiMultiSelectTempData["ClearIO"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiMultiSelectTempData_ClearIO(i1)
    return out
end
local mt = getmetatable(ImGuiMultiSelectTempData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiMultiSelectTempData_ImGuiMultiSelectTempData()
    return ffi.gc(p[0], C.ImGuiMultiSelectTempData_destroy)
end
setmetatable(ImGuiMultiSelectTempData, mt)
M.ImGuiMultiSelectTempData = ImGuiMultiSelectTempData
ffi.metatype("ImGuiMultiSelectTempData", ImGuiMultiSelectTempData)

local ImGuiNavItemData = ImGuiNavItemData or {}
ImGuiNavItemData.__index = ImGuiNavItemData
ImGuiNavItemData["Clear"] = ImGuiNavItemData["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiNavItemData_Clear(i1)
    return out
end
local mt = getmetatable(ImGuiNavItemData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiNavItemData_ImGuiNavItemData()
    return ffi.gc(p[0], C.ImGuiNavItemData_destroy)
end
setmetatable(ImGuiNavItemData, mt)
M.ImGuiNavItemData = ImGuiNavItemData
ffi.metatype("ImGuiNavItemData", ImGuiNavItemData)

local ImGuiNextItemData = ImGuiNextItemData or {}
ImGuiNextItemData.__index = ImGuiNextItemData
ImGuiNextItemData["ClearFlags"] = ImGuiNextItemData["ClearFlags"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiNextItemData_ClearFlags(i1)
    return out
end
local mt = getmetatable(ImGuiNextItemData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiNextItemData_ImGuiNextItemData()
    return ffi.gc(p[0], C.ImGuiNextItemData_destroy)
end
setmetatable(ImGuiNextItemData, mt)
M.ImGuiNextItemData = ImGuiNextItemData
ffi.metatype("ImGuiNextItemData", ImGuiNextItemData)

local ImGuiNextWindowData = ImGuiNextWindowData or {}
ImGuiNextWindowData.__index = ImGuiNextWindowData
ImGuiNextWindowData["ClearFlags"] = ImGuiNextWindowData["ClearFlags"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiNextWindowData_ClearFlags(i1)
    return out
end
local mt = getmetatable(ImGuiNextWindowData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiNextWindowData_ImGuiNextWindowData()
    return ffi.gc(p[0], C.ImGuiNextWindowData_destroy)
end
setmetatable(ImGuiNextWindowData, mt)
M.ImGuiNextWindowData = ImGuiNextWindowData
ffi.metatype("ImGuiNextWindowData", ImGuiNextWindowData)

local ImGuiOldColumnData = ImGuiOldColumnData or {}
ImGuiOldColumnData.__index = ImGuiOldColumnData
local mt = getmetatable(ImGuiOldColumnData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiOldColumnData_ImGuiOldColumnData()
    return ffi.gc(p[0], C.ImGuiOldColumnData_destroy)
end
setmetatable(ImGuiOldColumnData, mt)
M.ImGuiOldColumnData = ImGuiOldColumnData
ffi.metatype("ImGuiOldColumnData", ImGuiOldColumnData)

local ImGuiOldColumns = ImGuiOldColumns or {}
ImGuiOldColumns.__index = ImGuiOldColumns
local mt = getmetatable(ImGuiOldColumns) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiOldColumns_ImGuiOldColumns()
    return ffi.gc(p[0], C.ImGuiOldColumns_destroy)
end
setmetatable(ImGuiOldColumns, mt)
M.ImGuiOldColumns = ImGuiOldColumns
ffi.metatype("ImGuiOldColumns", ImGuiOldColumns)

local ImGuiOnceUponAFrame = ImGuiOnceUponAFrame or {}
ImGuiOnceUponAFrame.__index = ImGuiOnceUponAFrame
local mt = getmetatable(ImGuiOnceUponAFrame) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiOnceUponAFrame_ImGuiOnceUponAFrame()
    return ffi.gc(p[0], C.ImGuiOnceUponAFrame_destroy)
end
setmetatable(ImGuiOnceUponAFrame, mt)
M.ImGuiOnceUponAFrame = ImGuiOnceUponAFrame
ffi.metatype("ImGuiOnceUponAFrame", ImGuiOnceUponAFrame)

local ImGuiPayload = ImGuiPayload or {}
ImGuiPayload.__index = ImGuiPayload
ImGuiPayload["Clear"] = ImGuiPayload["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiPayload_Clear(i1)
    return out
end
ImGuiPayload["IsDataType"] = ImGuiPayload["IsDataType"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiPayload_IsDataType(i1, i2)
    return out
end
ImGuiPayload["IsDelivery"] = ImGuiPayload["IsDelivery"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiPayload_IsDelivery(i1)
    return out
end
ImGuiPayload["IsPreview"] = ImGuiPayload["IsPreview"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiPayload_IsPreview(i1)
    return out
end
local mt = getmetatable(ImGuiPayload) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiPayload_ImGuiPayload()
    return ffi.gc(p[0], C.ImGuiPayload_destroy)
end
setmetatable(ImGuiPayload, mt)
M.ImGuiPayload = ImGuiPayload
ffi.metatype("ImGuiPayload", ImGuiPayload)

local ImGuiPlatformIO = ImGuiPlatformIO or {}
ImGuiPlatformIO.__index = ImGuiPlatformIO
ImGuiPlatformIO["ClearPlatformHandlers"] = ImGuiPlatformIO["ClearPlatformHandlers"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiPlatformIO_ClearPlatformHandlers(i1)
    return out
end
ImGuiPlatformIO["ClearRendererHandlers"] = ImGuiPlatformIO["ClearRendererHandlers"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiPlatformIO_ClearRendererHandlers(i1)
    return out
end
local mt = getmetatable(ImGuiPlatformIO) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiPlatformIO_ImGuiPlatformIO()
    return ffi.gc(p[0], C.ImGuiPlatformIO_destroy)
end
setmetatable(ImGuiPlatformIO, mt)
M.ImGuiPlatformIO = ImGuiPlatformIO
ffi.metatype("ImGuiPlatformIO", ImGuiPlatformIO)

local ImGuiPlatformImeData = ImGuiPlatformImeData or {}
ImGuiPlatformImeData.__index = ImGuiPlatformImeData
local mt = getmetatable(ImGuiPlatformImeData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiPlatformImeData_ImGuiPlatformImeData()
    return ffi.gc(p[0], C.ImGuiPlatformImeData_destroy)
end
setmetatable(ImGuiPlatformImeData, mt)
M.ImGuiPlatformImeData = ImGuiPlatformImeData
ffi.metatype("ImGuiPlatformImeData", ImGuiPlatformImeData)

local ImGuiPopupData = ImGuiPopupData or {}
ImGuiPopupData.__index = ImGuiPopupData
local mt = getmetatable(ImGuiPopupData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiPopupData_ImGuiPopupData()
    return ffi.gc(p[0], C.ImGuiPopupData_destroy)
end
setmetatable(ImGuiPopupData, mt)
M.ImGuiPopupData = ImGuiPopupData
ffi.metatype("ImGuiPopupData", ImGuiPopupData)

local ImGuiPtrOrIndex = ImGuiPtrOrIndex or {}
ImGuiPtrOrIndex.__index = ImGuiPtrOrIndex
M.ImGuiPtrOrIndex_Ptr = M.ImGuiPtrOrIndex_Ptr  or function(i1)
    jit.off(true)
    local p = C.ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(i1)
    return ffi.gc(p[0], C.ImGuiPtrOrIndex_destroy)
end
M.ImGuiPtrOrIndex_Int = M.ImGuiPtrOrIndex_Int  or function(i1)
    jit.off(true)
    local p = C.ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(i1)
    return ffi.gc(p[0], C.ImGuiPtrOrIndex_destroy)
end
M.ImGuiPtrOrIndex = ImGuiPtrOrIndex
ffi.metatype("ImGuiPtrOrIndex", ImGuiPtrOrIndex)

local ImGuiSelectionBasicStorage = ImGuiSelectionBasicStorage or {}
ImGuiSelectionBasicStorage.__index = ImGuiSelectionBasicStorage
ImGuiSelectionBasicStorage["ApplyRequests"] = ImGuiSelectionBasicStorage["ApplyRequests"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiSelectionBasicStorage_ApplyRequests(i1, i2)
    return out
end
ImGuiSelectionBasicStorage["Clear"] = ImGuiSelectionBasicStorage["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiSelectionBasicStorage_Clear(i1)
    return out
end
ImGuiSelectionBasicStorage["Contains"] = ImGuiSelectionBasicStorage["Contains"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiSelectionBasicStorage_Contains(i1, i2)
    return out
end
ImGuiSelectionBasicStorage["GetNextSelectedItem"] = ImGuiSelectionBasicStorage["GetNextSelectedItem"]  or function(i1, i2)
    jit.off(true)
    local o1 = ffi.new("ImGuiID[1]")
    local out = C.ImGuiSelectionBasicStorage_GetNextSelectedItem(i1, i2, o1)
    return o1[0], out
end
ImGuiSelectionBasicStorage["GetStorageIdFromIndex"] = ImGuiSelectionBasicStorage["GetStorageIdFromIndex"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiSelectionBasicStorage_GetStorageIdFromIndex(i1, i2)
    return out
end
ImGuiSelectionBasicStorage["SetItemSelected"] = ImGuiSelectionBasicStorage["SetItemSelected"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiSelectionBasicStorage_SetItemSelected(i1, i2, i3)
    return out
end
ImGuiSelectionBasicStorage["Swap"] = ImGuiSelectionBasicStorage["Swap"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiSelectionBasicStorage_Swap(i1, i2)
    return out
end
local mt = getmetatable(ImGuiSelectionBasicStorage) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage()
    return ffi.gc(p[0], C.ImGuiSelectionBasicStorage_destroy)
end
setmetatable(ImGuiSelectionBasicStorage, mt)
M.ImGuiSelectionBasicStorage = ImGuiSelectionBasicStorage
ffi.metatype("ImGuiSelectionBasicStorage", ImGuiSelectionBasicStorage)

local ImGuiSelectionExternalStorage = ImGuiSelectionExternalStorage or {}
ImGuiSelectionExternalStorage.__index = ImGuiSelectionExternalStorage
ImGuiSelectionExternalStorage["ApplyRequests"] = ImGuiSelectionExternalStorage["ApplyRequests"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiSelectionExternalStorage_ApplyRequests(i1, i2)
    return out
end
local mt = getmetatable(ImGuiSelectionExternalStorage) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage()
    return ffi.gc(p[0], C.ImGuiSelectionExternalStorage_destroy)
end
setmetatable(ImGuiSelectionExternalStorage, mt)
M.ImGuiSelectionExternalStorage = ImGuiSelectionExternalStorage
ffi.metatype("ImGuiSelectionExternalStorage", ImGuiSelectionExternalStorage)

local ImGuiSettingsHandler = ImGuiSettingsHandler or {}
ImGuiSettingsHandler.__index = ImGuiSettingsHandler
local mt = getmetatable(ImGuiSettingsHandler) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiSettingsHandler_ImGuiSettingsHandler()
    return ffi.gc(p[0], C.ImGuiSettingsHandler_destroy)
end
setmetatable(ImGuiSettingsHandler, mt)
M.ImGuiSettingsHandler = ImGuiSettingsHandler
ffi.metatype("ImGuiSettingsHandler", ImGuiSettingsHandler)

local ImGuiStackLevelInfo = ImGuiStackLevelInfo or {}
ImGuiStackLevelInfo.__index = ImGuiStackLevelInfo
local mt = getmetatable(ImGuiStackLevelInfo) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiStackLevelInfo_ImGuiStackLevelInfo()
    return ffi.gc(p[0], C.ImGuiStackLevelInfo_destroy)
end
setmetatable(ImGuiStackLevelInfo, mt)
M.ImGuiStackLevelInfo = ImGuiStackLevelInfo
ffi.metatype("ImGuiStackLevelInfo", ImGuiStackLevelInfo)

local ImGuiStorage = ImGuiStorage or {}
ImGuiStorage.__index = ImGuiStorage
ImGuiStorage["BuildSortByKey"] = ImGuiStorage["BuildSortByKey"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiStorage_BuildSortByKey(i1)
    return out
end
ImGuiStorage["Clear"] = ImGuiStorage["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiStorage_Clear(i1)
    return out
end
ImGuiStorage["GetBool"] = ImGuiStorage["GetBool"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = false end
    local out = C.ImGuiStorage_GetBool(i1, i2, i3)
    return out
end
ImGuiStorage["GetBoolRef"] = ImGuiStorage["GetBoolRef"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = false end
    local out = C.ImGuiStorage_GetBoolRef(i1, i2, i3)
    return out
end
ImGuiStorage["GetFloat"] = ImGuiStorage["GetFloat"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    local out = C.ImGuiStorage_GetFloat(i1, i2, i3)
    return out
end
ImGuiStorage["GetFloatRef"] = ImGuiStorage["GetFloatRef"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    local out = C.ImGuiStorage_GetFloatRef(i1, i2, i3)
    return out
end
ImGuiStorage["GetInt"] = ImGuiStorage["GetInt"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.ImGuiStorage_GetInt(i1, i2, i3)
    return out
end
ImGuiStorage["GetIntRef"] = ImGuiStorage["GetIntRef"]  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.ImGuiStorage_GetIntRef(i1, i2, i3)
    return out
end
ImGuiStorage["GetVoidPtr"] = ImGuiStorage["GetVoidPtr"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiStorage_GetVoidPtr(i1, i2)
    return out
end
ImGuiStorage["GetVoidPtrRef"] = ImGuiStorage["GetVoidPtrRef"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiStorage_GetVoidPtrRef(i1, i2, i3)
    return out
end
ImGuiStorage["SetAllInt"] = ImGuiStorage["SetAllInt"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiStorage_SetAllInt(i1, i2)
    return out
end
ImGuiStorage["SetBool"] = ImGuiStorage["SetBool"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiStorage_SetBool(i1, i2, i3)
    return out
end
ImGuiStorage["SetFloat"] = ImGuiStorage["SetFloat"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiStorage_SetFloat(i1, i2, i3)
    return out
end
ImGuiStorage["SetInt"] = ImGuiStorage["SetInt"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiStorage_SetInt(i1, i2, i3)
    return out
end
ImGuiStorage["SetVoidPtr"] = ImGuiStorage["SetVoidPtr"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiStorage_SetVoidPtr(i1, i2, i3)
    return out
end
M.ImGuiStorage = ImGuiStorage
ffi.metatype("ImGuiStorage", ImGuiStorage)

local ImGuiStoragePair = ImGuiStoragePair or {}
ImGuiStoragePair.__index = ImGuiStoragePair
M.ImGuiStoragePair_Int = M.ImGuiStoragePair_Int  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiStoragePair_ImGuiStoragePair_Int(i1, i2)
    return ffi.gc(p[0], C.ImGuiStoragePair_destroy)
end
M.ImGuiStoragePair_Float = M.ImGuiStoragePair_Float  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiStoragePair_ImGuiStoragePair_Float(i1, i2)
    return ffi.gc(p[0], C.ImGuiStoragePair_destroy)
end
M.ImGuiStoragePair_Ptr = M.ImGuiStoragePair_Ptr  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiStoragePair_ImGuiStoragePair_Ptr(i1, i2)
    return ffi.gc(p[0], C.ImGuiStoragePair_destroy)
end
M.ImGuiStoragePair = ImGuiStoragePair
ffi.metatype("ImGuiStoragePair", ImGuiStoragePair)

local ImGuiStyle = ImGuiStyle or {}
ImGuiStyle.__index = ImGuiStyle
ImGuiStyle["ScaleAllSizes"] = ImGuiStyle["ScaleAllSizes"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiStyle_ScaleAllSizes(i1, i2)
    return out
end
local mt = getmetatable(ImGuiStyle) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiStyle_ImGuiStyle()
    return ffi.gc(p[0], C.ImGuiStyle_destroy)
end
setmetatable(ImGuiStyle, mt)
M.ImGuiStyle = ImGuiStyle
ffi.metatype("ImGuiStyle", ImGuiStyle)

local ImGuiStyleMod = ImGuiStyleMod or {}
ImGuiStyleMod.__index = ImGuiStyleMod
M.ImGuiStyleMod_Int = M.ImGuiStyleMod_Int  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiStyleMod_ImGuiStyleMod_Int(i1, i2)
    return ffi.gc(p[0], C.ImGuiStyleMod_destroy)
end
M.ImGuiStyleMod_Float = M.ImGuiStyleMod_Float  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiStyleMod_ImGuiStyleMod_Float(i1, i2)
    return ffi.gc(p[0], C.ImGuiStyleMod_destroy)
end
M.ImGuiStyleMod_Vec2 = M.ImGuiStyleMod_Vec2  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiStyleMod_ImGuiStyleMod_Vec2(i1, i2)
    return ffi.gc(p[0], C.ImGuiStyleMod_destroy)
end
M.ImGuiStyleMod = ImGuiStyleMod
ffi.metatype("ImGuiStyleMod", ImGuiStyleMod)

local ImGuiStyleVarInfo = ImGuiStyleVarInfo or {}
ImGuiStyleVarInfo.__index = ImGuiStyleVarInfo
ImGuiStyleVarInfo["GetVarPtr"] = ImGuiStyleVarInfo["GetVarPtr"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiStyleVarInfo_GetVarPtr(i1, i2)
    return out
end
M.ImGuiStyleVarInfo = ImGuiStyleVarInfo
ffi.metatype("ImGuiStyleVarInfo", ImGuiStyleVarInfo)

local ImGuiTabBar = ImGuiTabBar or {}
ImGuiTabBar.__index = ImGuiTabBar
local mt = getmetatable(ImGuiTabBar) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTabBar_ImGuiTabBar()
    return ffi.gc(p[0], C.ImGuiTabBar_destroy)
end
setmetatable(ImGuiTabBar, mt)
M.ImGuiTabBar = ImGuiTabBar
ffi.metatype("ImGuiTabBar", ImGuiTabBar)

local ImGuiTabItem = ImGuiTabItem or {}
ImGuiTabItem.__index = ImGuiTabItem
local mt = getmetatable(ImGuiTabItem) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTabItem_ImGuiTabItem()
    return ffi.gc(p[0], C.ImGuiTabItem_destroy)
end
setmetatable(ImGuiTabItem, mt)
M.ImGuiTabItem = ImGuiTabItem
ffi.metatype("ImGuiTabItem", ImGuiTabItem)

local ImGuiTable = ImGuiTable or {}
ImGuiTable.__index = ImGuiTable
local mt = getmetatable(ImGuiTable) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTable_ImGuiTable()
    return ffi.gc(p[0], C.ImGuiTable_destroy)
end
setmetatable(ImGuiTable, mt)
M.ImGuiTable = ImGuiTable
ffi.metatype("ImGuiTable", ImGuiTable)

local ImGuiTableColumn = ImGuiTableColumn or {}
ImGuiTableColumn.__index = ImGuiTableColumn
local mt = getmetatable(ImGuiTableColumn) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableColumn_ImGuiTableColumn()
    return ffi.gc(p[0], C.ImGuiTableColumn_destroy)
end
setmetatable(ImGuiTableColumn, mt)
M.ImGuiTableColumn = ImGuiTableColumn
ffi.metatype("ImGuiTableColumn", ImGuiTableColumn)

local ImGuiTableColumnSettings = ImGuiTableColumnSettings or {}
ImGuiTableColumnSettings.__index = ImGuiTableColumnSettings
local mt = getmetatable(ImGuiTableColumnSettings) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableColumnSettings_ImGuiTableColumnSettings()
    return ffi.gc(p[0], C.ImGuiTableColumnSettings_destroy)
end
setmetatable(ImGuiTableColumnSettings, mt)
M.ImGuiTableColumnSettings = ImGuiTableColumnSettings
ffi.metatype("ImGuiTableColumnSettings", ImGuiTableColumnSettings)

local ImGuiTableColumnSortSpecs = ImGuiTableColumnSortSpecs or {}
ImGuiTableColumnSortSpecs.__index = ImGuiTableColumnSortSpecs
local mt = getmetatable(ImGuiTableColumnSortSpecs) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs()
    return ffi.gc(p[0], C.ImGuiTableColumnSortSpecs_destroy)
end
setmetatable(ImGuiTableColumnSortSpecs, mt)
M.ImGuiTableColumnSortSpecs = ImGuiTableColumnSortSpecs
ffi.metatype("ImGuiTableColumnSortSpecs", ImGuiTableColumnSortSpecs)

local ImGuiTableInstanceData = ImGuiTableInstanceData or {}
ImGuiTableInstanceData.__index = ImGuiTableInstanceData
local mt = getmetatable(ImGuiTableInstanceData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableInstanceData_ImGuiTableInstanceData()
    return ffi.gc(p[0], C.ImGuiTableInstanceData_destroy)
end
setmetatable(ImGuiTableInstanceData, mt)
M.ImGuiTableInstanceData = ImGuiTableInstanceData
ffi.metatype("ImGuiTableInstanceData", ImGuiTableInstanceData)

local ImGuiTableSettings = ImGuiTableSettings or {}
ImGuiTableSettings.__index = ImGuiTableSettings
ImGuiTableSettings["GetColumnSettings"] = ImGuiTableSettings["GetColumnSettings"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTableSettings_GetColumnSettings(i1)
    return out
end
local mt = getmetatable(ImGuiTableSettings) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableSettings_ImGuiTableSettings()
    return ffi.gc(p[0], C.ImGuiTableSettings_destroy)
end
setmetatable(ImGuiTableSettings, mt)
M.ImGuiTableSettings = ImGuiTableSettings
ffi.metatype("ImGuiTableSettings", ImGuiTableSettings)

local ImGuiTableSortSpecs = ImGuiTableSortSpecs or {}
ImGuiTableSortSpecs.__index = ImGuiTableSortSpecs
local mt = getmetatable(ImGuiTableSortSpecs) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableSortSpecs_ImGuiTableSortSpecs()
    return ffi.gc(p[0], C.ImGuiTableSortSpecs_destroy)
end
setmetatable(ImGuiTableSortSpecs, mt)
M.ImGuiTableSortSpecs = ImGuiTableSortSpecs
ffi.metatype("ImGuiTableSortSpecs", ImGuiTableSortSpecs)

local ImGuiTableTempData = ImGuiTableTempData or {}
ImGuiTableTempData.__index = ImGuiTableTempData
local mt = getmetatable(ImGuiTableTempData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTableTempData_ImGuiTableTempData()
    return ffi.gc(p[0], C.ImGuiTableTempData_destroy)
end
setmetatable(ImGuiTableTempData, mt)
M.ImGuiTableTempData = ImGuiTableTempData
ffi.metatype("ImGuiTableTempData", ImGuiTableTempData)

local ImGuiTextBuffer = ImGuiTextBuffer or {}
ImGuiTextBuffer.__index = ImGuiTextBuffer
ImGuiTextBuffer["append"] = ImGuiTextBuffer["append"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiTextBuffer_append(i1, i2, i3)
    return out
end
ImGuiTextBuffer["appendf"] = ImGuiTextBuffer["appendf"]  or function(i1, i2, ...)
    jit.off(true)
    local out = C.ImGuiTextBuffer_appendf(i1, i2, ...)
    return out
end
ImGuiTextBuffer["begin"] = ImGuiTextBuffer["begin"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextBuffer_begin(i1)
    return out
end
ImGuiTextBuffer["c_str"] = ImGuiTextBuffer["c_str"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextBuffer_c_str(i1)
    return out
end
ImGuiTextBuffer["clear"] = ImGuiTextBuffer["clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextBuffer_clear(i1)
    return out
end
ImGuiTextBuffer["empty"] = ImGuiTextBuffer["empty"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextBuffer_empty(i1)
    return out
end
ImGuiTextBuffer["end"] = ImGuiTextBuffer["end"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextBuffer_end(i1)
    return out
end
ImGuiTextBuffer.c_end = ImGuiTextBuffer["end"] 
ImGuiTextBuffer["reserve"] = ImGuiTextBuffer["reserve"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiTextBuffer_reserve(i1, i2)
    return out
end
ImGuiTextBuffer["resize"] = ImGuiTextBuffer["resize"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiTextBuffer_resize(i1, i2)
    return out
end
ImGuiTextBuffer["size"] = ImGuiTextBuffer["size"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextBuffer_size(i1)
    return out
end
local mt = getmetatable(ImGuiTextBuffer) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTextBuffer_ImGuiTextBuffer()
    return ffi.gc(p[0], C.ImGuiTextBuffer_destroy)
end
setmetatable(ImGuiTextBuffer, mt)
M.ImGuiTextBuffer = ImGuiTextBuffer
ffi.metatype("ImGuiTextBuffer", ImGuiTextBuffer)

local ImGuiTextFilter = ImGuiTextFilter or {}
ImGuiTextFilter.__index = ImGuiTextFilter
ImGuiTextFilter["Build"] = ImGuiTextFilter["Build"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextFilter_Build(i1)
    return out
end
ImGuiTextFilter["Clear"] = ImGuiTextFilter["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextFilter_Clear(i1)
    return out
end
ImGuiTextFilter["Draw"] = ImGuiTextFilter["Draw"]  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = "Filter(inc,-exc)" end
    if i3 == nil then i3 = 0.0 end
    local out = C.ImGuiTextFilter_Draw(i1, i2, i3)
    return out
end
ImGuiTextFilter["IsActive"] = ImGuiTextFilter["IsActive"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextFilter_IsActive(i1)
    return out
end
ImGuiTextFilter["PassFilter"] = ImGuiTextFilter["PassFilter"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiTextFilter_PassFilter(i1, i2, i3)
    return out
end
local mt = getmetatable(ImGuiTextFilter) or {}
mt.__call = mt.__call or function(self, i1)
    jit.off(true)
    local p = C.ImGuiTextFilter_ImGuiTextFilter(i1)
    return ffi.gc(p[0], C.ImGuiTextFilter_destroy)
end
setmetatable(ImGuiTextFilter, mt)
M.ImGuiTextFilter = ImGuiTextFilter
ffi.metatype("ImGuiTextFilter", ImGuiTextFilter)

local ImGuiTextIndex = ImGuiTextIndex or {}
ImGuiTextIndex.__index = ImGuiTextIndex
ImGuiTextIndex["append"] = ImGuiTextIndex["append"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImGuiTextIndex_append(i1, i2, i3, i4)
    return out
end
ImGuiTextIndex["clear"] = ImGuiTextIndex["clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextIndex_clear(i1)
    return out
end
ImGuiTextIndex["get_line_begin"] = ImGuiTextIndex["get_line_begin"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiTextIndex_get_line_begin(i1, i2, i3)
    return out
end
ImGuiTextIndex["get_line_end"] = ImGuiTextIndex["get_line_end"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiTextIndex_get_line_end(i1, i2, i3)
    return out
end
ImGuiTextIndex["size"] = ImGuiTextIndex["size"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextIndex_size(i1)
    return out
end
M.ImGuiTextIndex = ImGuiTextIndex
ffi.metatype("ImGuiTextIndex", ImGuiTextIndex)

local ImGuiTextRange = ImGuiTextRange or {}
ImGuiTextRange.__index = ImGuiTextRange
ImGuiTextRange["empty"] = ImGuiTextRange["empty"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTextRange_empty(i1)
    return out
end
ImGuiTextRange["split"] = ImGuiTextRange["split"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiTextRange_split(i1, i2, i3)
    return out
end
M.ImGuiTextRange_Nil = M.ImGuiTextRange_Nil  or function()
    jit.off(true)
    local p = C.ImGuiTextRange_ImGuiTextRange_Nil()
    return ffi.gc(p[0], C.ImGuiTextRange_destroy)
end
M.ImGuiTextRange_Str = M.ImGuiTextRange_Str  or function(i1, i2)
    jit.off(true)
    local p = C.ImGuiTextRange_ImGuiTextRange_Str(i1, i2)
    return ffi.gc(p[0], C.ImGuiTextRange_destroy)
end
M.ImGuiTextRange = ImGuiTextRange
ffi.metatype("ImGuiTextRange", ImGuiTextRange)

local ImGuiTypingSelectState = ImGuiTypingSelectState or {}
ImGuiTypingSelectState.__index = ImGuiTypingSelectState
ImGuiTypingSelectState["Clear"] = ImGuiTypingSelectState["Clear"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiTypingSelectState_Clear(i1)
    return out
end
local mt = getmetatable(ImGuiTypingSelectState) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiTypingSelectState_ImGuiTypingSelectState()
    return ffi.gc(p[0], C.ImGuiTypingSelectState_destroy)
end
setmetatable(ImGuiTypingSelectState, mt)
M.ImGuiTypingSelectState = ImGuiTypingSelectState
ffi.metatype("ImGuiTypingSelectState", ImGuiTypingSelectState)

local ImGuiViewport = ImGuiViewport or {}
ImGuiViewport.__index = ImGuiViewport
ImGuiViewport["GetCenter"] = ImGuiViewport["GetCenter"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiViewport_GetCenter(i1)
    return out
end
ImGuiViewport["GetWorkCenter"] = ImGuiViewport["GetWorkCenter"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiViewport_GetWorkCenter(i1)
    return out
end
local mt = getmetatable(ImGuiViewport) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiViewport_ImGuiViewport()
    return ffi.gc(p[0], C.ImGuiViewport_destroy)
end
setmetatable(ImGuiViewport, mt)
M.ImGuiViewport = ImGuiViewport
ffi.metatype("ImGuiViewport", ImGuiViewport)

local ImGuiViewportP = ImGuiViewportP or {}
ImGuiViewportP.__index = ImGuiViewportP
ImGuiViewportP["CalcWorkRectPos"] = ImGuiViewportP["CalcWorkRectPos"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiViewportP_CalcWorkRectPos(i1, i2)
    return out
end
ImGuiViewportP["CalcWorkRectSize"] = ImGuiViewportP["CalcWorkRectSize"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiViewportP_CalcWorkRectSize(i1, i2, i3)
    return out
end
ImGuiViewportP["GetBuildWorkRect"] = ImGuiViewportP["GetBuildWorkRect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiViewportP_GetBuildWorkRect(i1)
    return out
end
ImGuiViewportP["GetMainRect"] = ImGuiViewportP["GetMainRect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiViewportP_GetMainRect(i1)
    return out
end
ImGuiViewportP["GetWorkRect"] = ImGuiViewportP["GetWorkRect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiViewportP_GetWorkRect(i1)
    return out
end
ImGuiViewportP["UpdateWorkRect"] = ImGuiViewportP["UpdateWorkRect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiViewportP_UpdateWorkRect(i1)
    return out
end
local mt = getmetatable(ImGuiViewportP) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiViewportP_ImGuiViewportP()
    return ffi.gc(p[0], C.ImGuiViewportP_destroy)
end
setmetatable(ImGuiViewportP, mt)
M.ImGuiViewportP = ImGuiViewportP
ffi.metatype("ImGuiViewportP", ImGuiViewportP)

local ImGuiWindow = ImGuiWindow or {}
ImGuiWindow.__index = ImGuiWindow
ImGuiWindow["GetID_Str"] = ImGuiWindow["GetID_Str"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiWindow_GetID_Str(i1, i2, i3)
    return out
end
ImGuiWindow["GetID_Ptr"] = ImGuiWindow["GetID_Ptr"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiWindow_GetID_Ptr(i1, i2)
    return out
end
ImGuiWindow["GetID_Int"] = ImGuiWindow["GetID_Int"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiWindow_GetID_Int(i1, i2)
    return out
end
ImGuiWindow["GetIDFromPos"] = ImGuiWindow["GetIDFromPos"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiWindow_GetIDFromPos(i1, i2)
    return out
end
ImGuiWindow["GetIDFromRectangle"] = ImGuiWindow["GetIDFromRectangle"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImGuiWindow_GetIDFromRectangle(i1, i2)
    return out
end
ImGuiWindow["MenuBarRect"] = ImGuiWindow["MenuBarRect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiWindow_MenuBarRect(i1)
    return out
end
ImGuiWindow["Rect"] = ImGuiWindow["Rect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiWindow_Rect(i1)
    return out
end
ImGuiWindow["TitleBarRect"] = ImGuiWindow["TitleBarRect"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiWindow_TitleBarRect(i1)
    return out
end
local mt = getmetatable(ImGuiWindow) or {}
mt.__call = mt.__call or function(self, i1, i2)
    jit.off(true)
    local p = C.ImGuiWindow_ImGuiWindow(i1, i2)
    return ffi.gc(p[0], C.ImGuiWindow_destroy)
end
setmetatable(ImGuiWindow, mt)
M.ImGuiWindow = ImGuiWindow
ffi.metatype("ImGuiWindow", ImGuiWindow)

local ImGuiWindowSettings = ImGuiWindowSettings or {}
ImGuiWindowSettings.__index = ImGuiWindowSettings
ImGuiWindowSettings["GetName"] = ImGuiWindowSettings["GetName"]  or function(i1)
    jit.off(true)
    local out = C.ImGuiWindowSettings_GetName(i1)
    return out
end
local mt = getmetatable(ImGuiWindowSettings) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImGuiWindowSettings_ImGuiWindowSettings()
    return ffi.gc(p[0], C.ImGuiWindowSettings_destroy)
end
setmetatable(ImGuiWindowSettings, mt)
M.ImGuiWindowSettings = ImGuiWindowSettings
ffi.metatype("ImGuiWindowSettings", ImGuiWindowSettings)

local ImRect = ImRect or {}
ImRect.__index = ImRect
ImRect["Add_Vec2"] = ImRect["Add_Vec2"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Add_Vec2(i1, i2)
    return out
end
ImRect["Add_Rect"] = ImRect["Add_Rect"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Add_Rect(i1, i2)
    return out
end
ImRect["AddX"] = ImRect["AddX"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_AddX(i1, i2)
    return out
end
ImRect["AddY"] = ImRect["AddY"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_AddY(i1, i2)
    return out
end
ImRect["AsVec4"] = ImRect["AsVec4"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_AsVec4(i1)
    return out
end
ImRect["ClipWith"] = ImRect["ClipWith"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_ClipWith(i1, i2)
    return out
end
ImRect["ClipWithFull"] = ImRect["ClipWithFull"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_ClipWithFull(i1, i2)
    return out
end
ImRect["Contains_Vec2"] = ImRect["Contains_Vec2"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Contains_Vec2(i1, i2)
    return out
end
ImRect["Contains_Rect"] = ImRect["Contains_Rect"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Contains_Rect(i1, i2)
    return out
end
ImRect["ContainsWithPad"] = ImRect["ContainsWithPad"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImRect_ContainsWithPad(i1, i2, i3)
    return out
end
ImRect["Expand_Float"] = ImRect["Expand_Float"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Expand_Float(i1, i2)
    return out
end
ImRect["Expand_Vec2"] = ImRect["Expand_Vec2"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Expand_Vec2(i1, i2)
    return out
end
ImRect["GetArea"] = ImRect["GetArea"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetArea(i1)
    return out
end
ImRect["GetBL"] = ImRect["GetBL"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetBL(i1)
    return out
end
ImRect["GetBR"] = ImRect["GetBR"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetBR(i1)
    return out
end
ImRect["GetCenter"] = ImRect["GetCenter"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetCenter(i1)
    return out
end
ImRect["GetHeight"] = ImRect["GetHeight"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetHeight(i1)
    return out
end
ImRect["GetSize"] = ImRect["GetSize"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetSize(i1)
    return out
end
ImRect["GetTL"] = ImRect["GetTL"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetTL(i1)
    return out
end
ImRect["GetTR"] = ImRect["GetTR"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetTR(i1)
    return out
end
ImRect["GetWidth"] = ImRect["GetWidth"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_GetWidth(i1)
    return out
end
ImRect["IsInverted"] = ImRect["IsInverted"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_IsInverted(i1)
    return out
end
ImRect["Overlaps"] = ImRect["Overlaps"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Overlaps(i1, i2)
    return out
end
ImRect["ToVec4"] = ImRect["ToVec4"]  or function(i1)
    jit.off(true)
    local out = C.ImRect_ToVec4(i1)
    return out
end
ImRect["Translate"] = ImRect["Translate"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_Translate(i1, i2)
    return out
end
ImRect["TranslateX"] = ImRect["TranslateX"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_TranslateX(i1, i2)
    return out
end
ImRect["TranslateY"] = ImRect["TranslateY"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImRect_TranslateY(i1, i2)
    return out
end
M.ImRect_Nil = M.ImRect_Nil  or function()
    jit.off(true)
    local p = C.ImRect_ImRect_Nil()
    return ffi.gc(p[0], C.ImRect_destroy)
end
M.ImRect_Vec2 = M.ImRect_Vec2  or function(i1, i2)
    jit.off(true)
    local p = C.ImRect_ImRect_Vec2(i1, i2)
    return ffi.gc(p[0], C.ImRect_destroy)
end
M.ImRect_Vec4 = M.ImRect_Vec4  or function(i1)
    jit.off(true)
    local p = C.ImRect_ImRect_Vec4(i1)
    return ffi.gc(p[0], C.ImRect_destroy)
end
M.ImRect_Float = M.ImRect_Float  or function(i1, i2, i3, i4)
    jit.off(true)
    local p = C.ImRect_ImRect_Float(i1, i2, i3, i4)
    return ffi.gc(p[0], C.ImRect_destroy)
end
M.ImRect = ImRect
ffi.metatype("ImRect", ImRect)

local ImTextureData = ImTextureData or {}
ImTextureData.__index = ImTextureData
ImTextureData["Create"] = ImTextureData["Create"]  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.ImTextureData_Create(i1, i2, i3, i4)
    return out
end
ImTextureData["DestroyPixels"] = ImTextureData["DestroyPixels"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureData_DestroyPixels(i1)
    return out
end
ImTextureData["GetPitch"] = ImTextureData["GetPitch"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureData_GetPitch(i1)
    return out
end
ImTextureData["GetPixels"] = ImTextureData["GetPixels"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureData_GetPixels(i1)
    return out
end
ImTextureData["GetPixelsAt"] = ImTextureData["GetPixelsAt"]  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImTextureData_GetPixelsAt(i1, i2, i3)
    return out
end
ImTextureData["GetSizeInBytes"] = ImTextureData["GetSizeInBytes"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureData_GetSizeInBytes(i1)
    return out
end
ImTextureData["GetTexID"] = ImTextureData["GetTexID"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureData_GetTexID(i1)
    return out
end
ImTextureData["GetTexRef"] = ImTextureData["GetTexRef"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureData_GetTexRef(i1)
    return out
end
ImTextureData["SetStatus"] = ImTextureData["SetStatus"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImTextureData_SetStatus(i1, i2)
    return out
end
ImTextureData["SetTexID"] = ImTextureData["SetTexID"]  or function(i1, i2)
    jit.off(true)
    local out = C.ImTextureData_SetTexID(i1, i2)
    return out
end
local mt = getmetatable(ImTextureData) or {}
mt.__call = mt.__call or function(self)
    jit.off(true)
    local p = C.ImTextureData_ImTextureData()
    return ffi.gc(p[0], C.ImTextureData_destroy)
end
setmetatable(ImTextureData, mt)
M.ImTextureData = ImTextureData
ffi.metatype("ImTextureData", ImTextureData)

local ImTextureRef = ImTextureRef or {}
ImTextureRef.__index = ImTextureRef
ImTextureRef["GetTexID"] = ImTextureRef["GetTexID"]  or function(i1)
    jit.off(true)
    local out = C.ImTextureRef_GetTexID(i1)
    return out
end
M.ImTextureRef_Nil = M.ImTextureRef_Nil  or function()
    jit.off(true)
    local p = C.ImTextureRef_ImTextureRef_Nil()
    return ffi.gc(p[0], C.ImTextureRef_destroy)
end
M.ImTextureRef_TextureID = M.ImTextureRef_TextureID  or function(i1)
    jit.off(true)
    local p = C.ImTextureRef_ImTextureRef_TextureID(i1)
    return ffi.gc(p[0], C.ImTextureRef_destroy)
end
M.ImTextureRef = ImTextureRef
ffi.metatype("ImTextureRef", ImTextureRef)

local ImVec1 = ImVec1 or {}
ImVec1.__index = ImVec1
M.ImVec1_Nil = M.ImVec1_Nil  or function()
    jit.off(true)
    local p = C.ImVec1_ImVec1_Nil()
    return ffi.gc(p[0], C.ImVec1_destroy)
end
M.ImVec1_Float = M.ImVec1_Float  or function(i1)
    jit.off(true)
    local p = C.ImVec1_ImVec1_Float(i1)
    return ffi.gc(p[0], C.ImVec1_destroy)
end
M.ImVec1 = ImVec1
ffi.metatype("ImVec1", ImVec1)

local ImVec2 = ImVec2 or {}
ImVec2.__index = ImVec2
M.ImVec2_Nil = M.ImVec2_Nil  or function()
    jit.off(true)
    local p = C.ImVec2_ImVec2_Nil()
    return ffi.gc(p[0], C.ImVec2_destroy)
end
M.ImVec2_Float = M.ImVec2_Float  or function(i1, i2)
    jit.off(true)
    local p = C.ImVec2_ImVec2_Float(i1, i2)
    return ffi.gc(p[0], C.ImVec2_destroy)
end
M.ImVec2 = ImVec2
ffi.metatype("ImVec2", ImVec2)

local ImVec2i = ImVec2i or {}
ImVec2i.__index = ImVec2i
M.ImVec2i_Nil = M.ImVec2i_Nil  or function()
    jit.off(true)
    local p = C.ImVec2i_ImVec2i_Nil()
    return ffi.gc(p[0], C.ImVec2i_destroy)
end
M.ImVec2i_Int = M.ImVec2i_Int  or function(i1, i2)
    jit.off(true)
    local p = C.ImVec2i_ImVec2i_Int(i1, i2)
    return ffi.gc(p[0], C.ImVec2i_destroy)
end
M.ImVec2i = ImVec2i
ffi.metatype("ImVec2i", ImVec2i)

local ImVec2ih = ImVec2ih or {}
ImVec2ih.__index = ImVec2ih
M.ImVec2ih_Nil = M.ImVec2ih_Nil  or function()
    jit.off(true)
    local p = C.ImVec2ih_ImVec2ih_Nil()
    return ffi.gc(p[0], C.ImVec2ih_destroy)
end
M.ImVec2ih_short = M.ImVec2ih_short  or function(i1, i2)
    jit.off(true)
    local p = C.ImVec2ih_ImVec2ih_short(i1, i2)
    return ffi.gc(p[0], C.ImVec2ih_destroy)
end
M.ImVec2ih_Vec2 = M.ImVec2ih_Vec2  or function(i1)
    jit.off(true)
    local p = C.ImVec2ih_ImVec2ih_Vec2(i1)
    return ffi.gc(p[0], C.ImVec2ih_destroy)
end
M.ImVec2ih = ImVec2ih
ffi.metatype("ImVec2ih", ImVec2ih)

local ImVec4 = ImVec4 or {}
ImVec4.__index = ImVec4
M.ImVec4_Nil = M.ImVec4_Nil  or function()
    jit.off(true)
    local p = C.ImVec4_ImVec4_Nil()
    return ffi.gc(p[0], C.ImVec4_destroy)
end
M.ImVec4_Float = M.ImVec4_Float  or function(i1, i2, i3, i4)
    jit.off(true)
    local p = C.ImVec4_ImVec4_Float(i1, i2, i3, i4)
    return ffi.gc(p[0], C.ImVec4_destroy)
end
M.ImVec4 = ImVec4
ffi.metatype("ImVec4", ImVec4)

M.ImGuiFreeType_DebugEditFontLoaderFlags = M.ImGuiFreeType_DebugEditFontLoaderFlags  or function(i1)
    jit.off(true)
    local out = C.ImGuiFreeType_DebugEditFontLoaderFlags(i1)
    return out
end
M.ImGuiFreeType_GetFontLoader = M.ImGuiFreeType_GetFontLoader  or function()
    jit.off(true)
    local out = C.ImGuiFreeType_GetFontLoader()
    return out
end
M.ImGuiFreeType_SetAllocatorFunctions = M.ImGuiFreeType_SetAllocatorFunctions  or function(i1, i2, i3)
    jit.off(true)
    local out = C.ImGuiFreeType_SetAllocatorFunctions(i1, i2, i3)
    return out
end
M.AcceptDragDropPayload = M.AcceptDragDropPayload  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igAcceptDragDropPayload(i1, i2)
    return out
end
M.ActivateItemByID = M.ActivateItemByID  or function(i1)
    jit.off(true)
    local out = C.igActivateItemByID(i1)
    return out
end
M.AddContextHook = M.AddContextHook  or function(i1, i2)
    jit.off(true)
    local out = C.igAddContextHook(i1, i2)
    return out
end
M.AddDrawListToDrawDataEx = M.AddDrawListToDrawDataEx  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igAddDrawListToDrawDataEx(i1, i2, i3)
    return out
end
M.AddSettingsHandler = M.AddSettingsHandler  or function(i1)
    jit.off(true)
    local out = C.igAddSettingsHandler(i1)
    return out
end
M.AlignTextToFramePadding = M.AlignTextToFramePadding  or function()
    jit.off(true)
    local out = C.igAlignTextToFramePadding()
    return out
end
M.ArrowButton = M.ArrowButton  or function(i1, i2)
    jit.off(true)
    local out = C.igArrowButton(i1, i2)
    return out
end
M.ArrowButtonEx = M.ArrowButtonEx  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    local out = C.igArrowButtonEx(i1, i2, i3, i4)
    return out
end
M.Begin = M.Begin  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igBegin(i1, i2, i3)
    return out
end
M.BeginBoxSelect = M.BeginBoxSelect  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igBeginBoxSelect(i1, i2, i3, i4)
    return out
end
M.BeginChild_Str = M.BeginChild_Str  or function(i1, i2, i3, i4)
    jit.off(true)
    if i2 == nil then i2 = M.ImVec2_Float(0, 0) end
    if i3 == nil then i3 = 0 end
    if i4 == nil then i4 = 0 end
    local out = C.igBeginChild_Str(i1, i2, i3, i4)
    return out
end
M.BeginChild_ID = M.BeginChild_ID  or function(i1, i2, i3, i4)
    jit.off(true)
    if i2 == nil then i2 = M.ImVec2_Float(0, 0) end
    if i3 == nil then i3 = 0 end
    if i4 == nil then i4 = 0 end
    local out = C.igBeginChild_ID(i1, i2, i3, i4)
    return out
end
M.BeginChildEx = M.BeginChildEx  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igBeginChildEx(i1, i2, i3, i4, i5)
    return out
end
M.BeginColumns = M.BeginColumns  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igBeginColumns(i1, i2, i3)
    return out
end
M.BeginCombo = M.BeginCombo  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igBeginCombo(i1, i2, i3)
    return out
end
M.BeginComboPopup = M.BeginComboPopup  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igBeginComboPopup(i1, i2, i3)
    return out
end
M.BeginComboPreview = M.BeginComboPreview  or function()
    jit.off(true)
    local out = C.igBeginComboPreview()
    return out
end
M.BeginDisabled = M.BeginDisabled  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = true end
    local out = C.igBeginDisabled(i1)
    return out
end
M.BeginDisabledOverrideReenable = M.BeginDisabledOverrideReenable  or function()
    jit.off(true)
    local out = C.igBeginDisabledOverrideReenable()
    return out
end
M.BeginDragDropSource = M.BeginDragDropSource  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igBeginDragDropSource(i1)
    return out
end
M.BeginDragDropTarget = M.BeginDragDropTarget  or function()
    jit.off(true)
    local out = C.igBeginDragDropTarget()
    return out
end
M.BeginDragDropTargetCustom = M.BeginDragDropTargetCustom  or function(i1, i2)
    jit.off(true)
    local out = C.igBeginDragDropTargetCustom(i1, i2)
    return out
end
M.BeginDragDropTargetViewport = M.BeginDragDropTargetViewport  or function(i1, i2)
    jit.off(true)
    local out = C.igBeginDragDropTargetViewport(i1, i2)
    return out
end
M.BeginErrorTooltip = M.BeginErrorTooltip  or function()
    jit.off(true)
    local out = C.igBeginErrorTooltip()
    return out
end
M.BeginGroup = M.BeginGroup  or function()
    jit.off(true)
    local out = C.igBeginGroup()
    return out
end
M.BeginItemTooltip = M.BeginItemTooltip  or function()
    jit.off(true)
    local out = C.igBeginItemTooltip()
    return out
end
M.BeginListBox = M.BeginListBox  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = M.ImVec2_Float(0, 0) end
    local out = C.igBeginListBox(i1, i2)
    return out
end
M.BeginMainMenuBar = M.BeginMainMenuBar  or function()
    jit.off(true)
    local out = C.igBeginMainMenuBar()
    return out
end
M.BeginMenu = M.BeginMenu  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = true end
    local out = C.igBeginMenu(i1, i2)
    return out
end
M.BeginMenuBar = M.BeginMenuBar  or function()
    jit.off(true)
    local out = C.igBeginMenuBar()
    return out
end
M.BeginMenuEx = M.BeginMenuEx  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = true end
    local out = C.igBeginMenuEx(i1, i2, i3)
    return out
end
M.BeginMultiSelect = M.BeginMultiSelect  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = -1 end
    if i3 == nil then i3 = -1 end
    local out = C.igBeginMultiSelect(i1, i2, i3)
    return out
end
M.BeginPopup = M.BeginPopup  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igBeginPopup(i1, i2)
    return out
end
M.BeginPopupContextItem = M.BeginPopupContextItem  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igBeginPopupContextItem(i1, i2)
    return out
end
M.BeginPopupContextVoid = M.BeginPopupContextVoid  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igBeginPopupContextVoid(i1, i2)
    return out
end
M.BeginPopupContextWindow = M.BeginPopupContextWindow  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igBeginPopupContextWindow(i1, i2)
    return out
end
M.BeginPopupEx = M.BeginPopupEx  or function(i1, i2)
    jit.off(true)
    local out = C.igBeginPopupEx(i1, i2)
    return out
end
M.BeginPopupMenuEx = M.BeginPopupMenuEx  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igBeginPopupMenuEx(i1, i2, i3)
    return out
end
M.BeginPopupModal = M.BeginPopupModal  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igBeginPopupModal(i1, i2, i3)
    return out
end
M.BeginTabBar = M.BeginTabBar  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igBeginTabBar(i1, i2)
    return out
end
M.BeginTabBarEx = M.BeginTabBarEx  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igBeginTabBarEx(i1, i2, i3)
    return out
end
M.BeginTabItem = M.BeginTabItem  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igBeginTabItem(i1, i2, i3)
    return out
end
M.BeginTable = M.BeginTable  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    if i4 == nil then i4 = M.ImVec2_Float(0.0, 0.0) end
    if i5 == nil then i5 = 0.0 end
    local out = C.igBeginTable(i1, i2, i3, i4, i5)
    return out
end
M.BeginTableEx = M.BeginTableEx  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    if i5 == nil then i5 = M.ImVec2_Float(0, 0) end
    if i6 == nil then i6 = 0.0 end
    local out = C.igBeginTableEx(i1, i2, i3, i4, i5, i6)
    return out
end
M.BeginTooltip = M.BeginTooltip  or function()
    jit.off(true)
    local out = C.igBeginTooltip()
    return out
end
M.BeginTooltipEx = M.BeginTooltipEx  or function(i1, i2)
    jit.off(true)
    local out = C.igBeginTooltipEx(i1, i2)
    return out
end
M.BeginTooltipHidden = M.BeginTooltipHidden  or function()
    jit.off(true)
    local out = C.igBeginTooltipHidden()
    return out
end
M.BeginViewportSideBar = M.BeginViewportSideBar  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igBeginViewportSideBar(i1, i2, i3, i4, i5)
    return out
end
M.BringWindowToDisplayBack = M.BringWindowToDisplayBack  or function(i1)
    jit.off(true)
    local out = C.igBringWindowToDisplayBack(i1)
    return out
end
M.BringWindowToDisplayBehind = M.BringWindowToDisplayBehind  or function(i1, i2)
    jit.off(true)
    local out = C.igBringWindowToDisplayBehind(i1, i2)
    return out
end
M.BringWindowToDisplayFront = M.BringWindowToDisplayFront  or function(i1)
    jit.off(true)
    local out = C.igBringWindowToDisplayFront(i1)
    return out
end
M.BringWindowToFocusFront = M.BringWindowToFocusFront  or function(i1)
    jit.off(true)
    local out = C.igBringWindowToFocusFront(i1)
    return out
end
M.Bullet = M.Bullet  or function()
    jit.off(true)
    local out = C.igBullet()
    return out
end
M.BulletText = M.BulletText  or function(i1, ...)
    jit.off(true)
    local out = C.igBulletText(i1, ...)
    return out
end
M.Button = M.Button  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = M.ImVec2_Float(0, 0) end
    local out = C.igButton(i1, i2)
    return out
end
M.ButtonBehavior = M.ButtonBehavior  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    local out = C.igButtonBehavior(i1, i2, i3, i4, i5)
    return out
end
M.ButtonEx = M.ButtonEx  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = M.ImVec2_Float(0, 0) end
    if i3 == nil then i3 = 0 end
    local out = C.igButtonEx(i1, i2, i3)
    return out
end
M.CalcClipRectVisibleItemsY = M.CalcClipRectVisibleItemsY  or function(i1, i2, i3)
    jit.off(true)
    local o1 = ffi.new("int[1]")
    local o2 = ffi.new("int[1]")
    local out = C.igCalcClipRectVisibleItemsY(i1, i2, i3, o1, o2)
    return o1[0], o2[0], out
end
M.CalcItemSize = M.CalcItemSize  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igCalcItemSize(i1, i2, i3)
    return out
end
M.CalcItemWidth = M.CalcItemWidth  or function()
    jit.off(true)
    local out = C.igCalcItemWidth()
    return out
end
M.CalcRoundingFlagsForRectInRect = M.CalcRoundingFlagsForRectInRect  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igCalcRoundingFlagsForRectInRect(i1, i2, i3)
    return out
end
M.CalcTextSize = M.CalcTextSize  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = false end
    if i4 == nil then i4 = -1.0 end
    local out = C.igCalcTextSize(i1, i2, i3, i4)
    return out
end
M.CalcTypematicRepeatAmount = M.CalcTypematicRepeatAmount  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igCalcTypematicRepeatAmount(i1, i2, i3, i4)
    return out
end
M.CalcWindowNextAutoFitSize = M.CalcWindowNextAutoFitSize  or function(i1)
    jit.off(true)
    local out = C.igCalcWindowNextAutoFitSize(i1)
    return out
end
M.CalcWrapWidthForPos = M.CalcWrapWidthForPos  or function(i1, i2)
    jit.off(true)
    local out = C.igCalcWrapWidthForPos(i1, i2)
    return out
end
M.CallContextHooks = M.CallContextHooks  or function(i1, i2)
    jit.off(true)
    local out = C.igCallContextHooks(i1, i2)
    return out
end
M.Checkbox = M.Checkbox  or function(i1, i2)
    jit.off(true)
    local out = C.igCheckbox(i1, i2)
    return out
end
M.CheckboxFlags_IntPtr = M.CheckboxFlags_IntPtr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igCheckboxFlags_IntPtr(i1, i2, i3)
    return out
end
M.CheckboxFlags_UintPtr = M.CheckboxFlags_UintPtr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igCheckboxFlags_UintPtr(i1, i2, i3)
    return out
end
M.CheckboxFlags_S64Ptr = M.CheckboxFlags_S64Ptr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igCheckboxFlags_S64Ptr(i1, i2, i3)
    return out
end
M.CheckboxFlags_U64Ptr = M.CheckboxFlags_U64Ptr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igCheckboxFlags_U64Ptr(i1, i2, i3)
    return out
end
M.ClearActiveID = M.ClearActiveID  or function()
    jit.off(true)
    local out = C.igClearActiveID()
    return out
end
M.ClearDragDrop = M.ClearDragDrop  or function()
    jit.off(true)
    local out = C.igClearDragDrop()
    return out
end
M.ClearIniSettings = M.ClearIniSettings  or function()
    jit.off(true)
    local out = C.igClearIniSettings()
    return out
end
M.ClearWindowSettings = M.ClearWindowSettings  or function(i1)
    jit.off(true)
    local out = C.igClearWindowSettings(i1)
    return out
end
M.CloseButton = M.CloseButton  or function(i1, i2)
    jit.off(true)
    local out = C.igCloseButton(i1, i2)
    return out
end
M.CloseCurrentPopup = M.CloseCurrentPopup  or function()
    jit.off(true)
    local out = C.igCloseCurrentPopup()
    return out
end
M.ClosePopupToLevel = M.ClosePopupToLevel  or function(i1, i2)
    jit.off(true)
    local out = C.igClosePopupToLevel(i1, i2)
    return out
end
M.ClosePopupsExceptModals = M.ClosePopupsExceptModals  or function()
    jit.off(true)
    local out = C.igClosePopupsExceptModals()
    return out
end
M.ClosePopupsOverWindow = M.ClosePopupsOverWindow  or function(i1, i2)
    jit.off(true)
    local out = C.igClosePopupsOverWindow(i1, i2)
    return out
end
M.CollapseButton = M.CollapseButton  or function(i1, i2)
    jit.off(true)
    local out = C.igCollapseButton(i1, i2)
    return out
end
M.CollapsingHeader_TreeNodeFlags = M.CollapsingHeader_TreeNodeFlags  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igCollapsingHeader_TreeNodeFlags(i1, i2)
    return out
end
M.CollapsingHeader_BoolPtr = M.CollapsingHeader_BoolPtr  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igCollapsingHeader_BoolPtr(i1, i2, i3)
    return out
end
M.ColorButton = M.ColorButton  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    if i4 == nil then i4 = M.ImVec2_Float(0, 0) end
    local out = C.igColorButton(i1, i2, i3, i4)
    return out
end
M.ColorConvertFloat4ToU32 = M.ColorConvertFloat4ToU32  or function(i1)
    jit.off(true)
    local out = C.igColorConvertFloat4ToU32(i1)
    return out
end
M.ColorConvertHSVtoRGB = M.ColorConvertHSVtoRGB  or function(i1, i2, i3)
    jit.off(true)
    local o1 = ffi.new("float[1]")
    local o2 = ffi.new("float[1]")
    local o3 = ffi.new("float[1]")
    local out = C.igColorConvertHSVtoRGB(i1, i2, i3, o1, o2, o3)
    return o1[0], o2[0], o3[0], out
end
M.ColorConvertRGBtoHSV = M.ColorConvertRGBtoHSV  or function(i1, i2, i3)
    jit.off(true)
    local o1 = ffi.new("float[1]")
    local o2 = ffi.new("float[1]")
    local o3 = ffi.new("float[1]")
    local out = C.igColorConvertRGBtoHSV(i1, i2, i3, o1, o2, o3)
    return o1[0], o2[0], o3[0], out
end
M.ColorConvertU32ToFloat4 = M.ColorConvertU32ToFloat4  or function(i1)
    jit.off(true)
    local out = C.igColorConvertU32ToFloat4(i1)
    return out
end
M.ColorEdit3 = M.ColorEdit3  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igColorEdit3(i1, i2, i3)
    return out
end
M.ColorEdit4 = M.ColorEdit4  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igColorEdit4(i1, i2, i3)
    return out
end
M.ColorEditOptionsPopup = M.ColorEditOptionsPopup  or function(i1, i2)
    jit.off(true)
    local out = C.igColorEditOptionsPopup(i1, i2)
    return out
end
M.ColorPicker3 = M.ColorPicker3  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igColorPicker3(i1, i2, i3)
    return out
end
M.ColorPicker4 = M.ColorPicker4  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igColorPicker4(i1, i2, i3, i4)
    return out
end
M.ColorPickerOptionsPopup = M.ColorPickerOptionsPopup  or function(i1, i2)
    jit.off(true)
    local out = C.igColorPickerOptionsPopup(i1, i2)
    return out
end
M.ColorTooltip = M.ColorTooltip  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igColorTooltip(i1, i2, i3)
    return out
end
M.Columns = M.Columns  or function(i1, i2, i3)
    jit.off(true)
    if i1 == nil then i1 = 1 end
    if i3 == nil then i3 = true end
    local out = C.igColumns(i1, i2, i3)
    return out
end
M.Combo_Str_arr = M.Combo_Str_arr  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = -1 end
    local out = C.igCombo_Str_arr(i1, i2, i3, i4, i5)
    return out
end
M.Combo_Str = M.Combo_Str  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = -1 end
    local out = C.igCombo_Str(i1, i2, i3, i4)
    return out
end
M.Combo_FnStrPtr = M.Combo_FnStrPtr  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = -1 end
    local out = C.igCombo_FnStrPtr(i1, i2, i3, i4, i5, i6)
    return out
end
M.ConvertSingleModFlagToKey = M.ConvertSingleModFlagToKey  or function(i1)
    jit.off(true)
    local out = C.igConvertSingleModFlagToKey(i1)
    return out
end
M.CreateContext = M.CreateContext  or function(i1)
    jit.off(true)
    local out = C.igCreateContext(i1)
    return out
end
M.CreateNewWindowSettings = M.CreateNewWindowSettings  or function(i1)
    jit.off(true)
    local out = C.igCreateNewWindowSettings(i1)
    return out
end
M.DataTypeApplyFromText = M.DataTypeApplyFromText  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igDataTypeApplyFromText(i1, i2, i3, i4, i5)
    return out
end
M.DataTypeApplyOp = M.DataTypeApplyOp  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igDataTypeApplyOp(i1, i2, i3, i4, i5)
    return out
end
M.DataTypeClamp = M.DataTypeClamp  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igDataTypeClamp(i1, i2, i3, i4)
    return out
end
M.DataTypeCompare = M.DataTypeCompare  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igDataTypeCompare(i1, i2, i3)
    return out
end
M.DataTypeFormatString = M.DataTypeFormatString  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igDataTypeFormatString(i1, i2, i3, i4, i5)
    return out
end
M.DataTypeGetInfo = M.DataTypeGetInfo  or function(i1)
    jit.off(true)
    local out = C.igDataTypeGetInfo(i1)
    return out
end
M.DataTypeIsZero = M.DataTypeIsZero  or function(i1, i2)
    jit.off(true)
    local out = C.igDataTypeIsZero(i1, i2)
    return out
end
M.DebugAllocHook = M.DebugAllocHook  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igDebugAllocHook(i1, i2, i3, i4)
    return out
end
M.DebugBreakButton = M.DebugBreakButton  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugBreakButton(i1, i2)
    return out
end
M.DebugBreakButtonTooltip = M.DebugBreakButtonTooltip  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugBreakButtonTooltip(i1, i2)
    return out
end
M.DebugBreakClearData = M.DebugBreakClearData  or function()
    jit.off(true)
    local out = C.igDebugBreakClearData()
    return out
end
M.DebugCheckVersionAndDataLayout = M.DebugCheckVersionAndDataLayout  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.igDebugCheckVersionAndDataLayout(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DebugDrawCursorPos = M.DebugDrawCursorPos  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 4278190335 end
    local out = C.igDebugDrawCursorPos(i1)
    return out
end
M.DebugDrawItemRect = M.DebugDrawItemRect  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 4278190335 end
    local out = C.igDebugDrawItemRect(i1)
    return out
end
M.DebugDrawLineExtents = M.DebugDrawLineExtents  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 4278190335 end
    local out = C.igDebugDrawLineExtents(i1)
    return out
end
M.DebugFlashStyleColor = M.DebugFlashStyleColor  or function(i1)
    jit.off(true)
    local out = C.igDebugFlashStyleColor(i1)
    return out
end
M.DebugHookIdInfo = M.DebugHookIdInfo  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igDebugHookIdInfo(i1, i2, i3, i4)
    return out
end
M.DebugLocateItem = M.DebugLocateItem  or function(i1)
    jit.off(true)
    local out = C.igDebugLocateItem(i1)
    return out
end
M.DebugLocateItemOnHover = M.DebugLocateItemOnHover  or function(i1)
    jit.off(true)
    local out = C.igDebugLocateItemOnHover(i1)
    return out
end
M.DebugLocateItemResolveWithLastItem = M.DebugLocateItemResolveWithLastItem  or function()
    jit.off(true)
    local out = C.igDebugLocateItemResolveWithLastItem()
    return out
end
M.DebugLog = M.DebugLog  or function(i1, ...)
    jit.off(true)
    local out = C.igDebugLog(i1, ...)
    return out
end
M.DebugNodeColumns = M.DebugNodeColumns  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeColumns(i1)
    return out
end
M.DebugNodeDrawCmdShowMeshAndBoundingBox = M.DebugNodeDrawCmdShowMeshAndBoundingBox  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igDebugNodeDrawCmdShowMeshAndBoundingBox(i1, i2, i3, i4, i5)
    return out
end
M.DebugNodeDrawList = M.DebugNodeDrawList  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igDebugNodeDrawList(i1, i2, i3, i4)
    return out
end
M.DebugNodeFont = M.DebugNodeFont  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeFont(i1)
    return out
end
M.DebugNodeFontGlyph = M.DebugNodeFontGlyph  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugNodeFontGlyph(i1, i2)
    return out
end
M.DebugNodeFontGlyphsForSrcMask = M.DebugNodeFontGlyphsForSrcMask  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igDebugNodeFontGlyphsForSrcMask(i1, i2, i3)
    return out
end
M.DebugNodeInputTextState = M.DebugNodeInputTextState  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeInputTextState(i1)
    return out
end
M.DebugNodeMultiSelectState = M.DebugNodeMultiSelectState  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeMultiSelectState(i1)
    return out
end
M.DebugNodeStorage = M.DebugNodeStorage  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugNodeStorage(i1, i2)
    return out
end
M.DebugNodeTabBar = M.DebugNodeTabBar  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugNodeTabBar(i1, i2)
    return out
end
M.DebugNodeTable = M.DebugNodeTable  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeTable(i1)
    return out
end
M.DebugNodeTableSettings = M.DebugNodeTableSettings  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeTableSettings(i1)
    return out
end
M.DebugNodeTexture = M.DebugNodeTexture  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igDebugNodeTexture(i1, i2, i3)
    return out
end
M.DebugNodeTypingSelectState = M.DebugNodeTypingSelectState  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeTypingSelectState(i1)
    return out
end
M.DebugNodeViewport = M.DebugNodeViewport  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeViewport(i1)
    return out
end
M.DebugNodeWindow = M.DebugNodeWindow  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugNodeWindow(i1, i2)
    return out
end
M.DebugNodeWindowSettings = M.DebugNodeWindowSettings  or function(i1)
    jit.off(true)
    local out = C.igDebugNodeWindowSettings(i1)
    return out
end
M.DebugNodeWindowsList = M.DebugNodeWindowsList  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugNodeWindowsList(i1, i2)
    return out
end
M.DebugNodeWindowsListByBeginStackParent = M.DebugNodeWindowsListByBeginStackParent  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igDebugNodeWindowsListByBeginStackParent(i1, i2, i3)
    return out
end
M.DebugRenderKeyboardPreview = M.DebugRenderKeyboardPreview  or function(i1)
    jit.off(true)
    local out = C.igDebugRenderKeyboardPreview(i1)
    return out
end
M.DebugRenderViewportThumbnail = M.DebugRenderViewportThumbnail  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igDebugRenderViewportThumbnail(i1, i2, i3)
    return out
end
M.DebugStartItemPicker = M.DebugStartItemPicker  or function()
    jit.off(true)
    local out = C.igDebugStartItemPicker()
    return out
end
M.DebugTextEncoding = M.DebugTextEncoding  or function(i1)
    jit.off(true)
    local out = C.igDebugTextEncoding(i1)
    return out
end
M.DebugTextUnformattedWithLocateItem = M.DebugTextUnformattedWithLocateItem  or function(i1, i2)
    jit.off(true)
    local out = C.igDebugTextUnformattedWithLocateItem(i1, i2)
    return out
end
M.DebugTextureIDToU64 = M.DebugTextureIDToU64  or function(i1)
    jit.off(true)
    local out = C.igDebugTextureIDToU64(i1)
    return out
end
M.DemoMarker = M.DemoMarker  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igDemoMarker(i1, i2, i3)
    return out
end
M.DestroyContext = M.DestroyContext  or function(i1)
    jit.off(true)
    local out = C.igDestroyContext(i1)
    return out
end
M.DragBehavior = M.DragBehavior  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igDragBehavior(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.DragFloat = M.DragFloat  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = "%.3f" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragFloat(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragFloat2 = M.DragFloat2  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = "%.3f" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragFloat2(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragFloat3 = M.DragFloat3  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = "%.3f" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragFloat3(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragFloat4 = M.DragFloat4  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = "%.3f" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragFloat4(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragFloatRange2 = M.DragFloatRange2  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i4 == nil then i4 = 1.0 end
    if i5 == nil then i5 = 0.0 end
    if i6 == nil then i6 = 0.0 end
    if i7 == nil then i7 = "%.3f" end
    if i9 == nil then i9 = 0 end
    local out = C.igDragFloatRange2(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.DragInt = M.DragInt  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0 end
    if i5 == nil then i5 = 0 end
    if i6 == nil then i6 = "%d" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragInt(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragInt2 = M.DragInt2  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0 end
    if i5 == nil then i5 = 0 end
    if i6 == nil then i6 = "%d" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragInt2(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragInt3 = M.DragInt3  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0 end
    if i5 == nil then i5 = 0 end
    if i6 == nil then i6 = "%d" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragInt3(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragInt4 = M.DragInt4  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i3 == nil then i3 = 1.0 end
    if i4 == nil then i4 = 0 end
    if i5 == nil then i5 = 0 end
    if i6 == nil then i6 = "%d" end
    if i7 == nil then i7 = 0 end
    local out = C.igDragInt4(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.DragIntRange2 = M.DragIntRange2  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i4 == nil then i4 = 1.0 end
    if i5 == nil then i5 = 0 end
    if i6 == nil then i6 = 0 end
    if i7 == nil then i7 = "%d" end
    if i9 == nil then i9 = 0 end
    local out = C.igDragIntRange2(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.DragScalar = M.DragScalar  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i4 == nil then i4 = 1.0 end
    if i8 == nil then i8 = 0 end
    local out = C.igDragScalar(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.DragScalarN = M.DragScalarN  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i5 == nil then i5 = 1.0 end
    if i9 == nil then i9 = 0 end
    local out = C.igDragScalarN(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.Dummy = M.Dummy  or function(i1)
    jit.off(true)
    local out = C.igDummy(i1)
    return out
end
M.End = M.End  or function()
    jit.off(true)
    local out = C.igEnd()
    return out
end
M.EndBoxSelect = M.EndBoxSelect  or function(i1, i2)
    jit.off(true)
    local out = C.igEndBoxSelect(i1, i2)
    return out
end
M.EndChild = M.EndChild  or function()
    jit.off(true)
    local out = C.igEndChild()
    return out
end
M.EndColumns = M.EndColumns  or function()
    jit.off(true)
    local out = C.igEndColumns()
    return out
end
M.EndCombo = M.EndCombo  or function()
    jit.off(true)
    local out = C.igEndCombo()
    return out
end
M.EndComboPreview = M.EndComboPreview  or function()
    jit.off(true)
    local out = C.igEndComboPreview()
    return out
end
M.EndDisabled = M.EndDisabled  or function()
    jit.off(true)
    local out = C.igEndDisabled()
    return out
end
M.EndDisabledOverrideReenable = M.EndDisabledOverrideReenable  or function()
    jit.off(true)
    local out = C.igEndDisabledOverrideReenable()
    return out
end
M.EndDragDropSource = M.EndDragDropSource  or function()
    jit.off(true)
    local out = C.igEndDragDropSource()
    return out
end
M.EndDragDropTarget = M.EndDragDropTarget  or function()
    jit.off(true)
    local out = C.igEndDragDropTarget()
    return out
end
M.EndErrorTooltip = M.EndErrorTooltip  or function()
    jit.off(true)
    local out = C.igEndErrorTooltip()
    return out
end
M.EndFrame = M.EndFrame  or function()
    jit.off(true)
    local out = C.igEndFrame()
    return out
end
M.EndGroup = M.EndGroup  or function()
    jit.off(true)
    local out = C.igEndGroup()
    return out
end
M.EndListBox = M.EndListBox  or function()
    jit.off(true)
    local out = C.igEndListBox()
    return out
end
M.EndMainMenuBar = M.EndMainMenuBar  or function()
    jit.off(true)
    local out = C.igEndMainMenuBar()
    return out
end
M.EndMenu = M.EndMenu  or function()
    jit.off(true)
    local out = C.igEndMenu()
    return out
end
M.EndMenuBar = M.EndMenuBar  or function()
    jit.off(true)
    local out = C.igEndMenuBar()
    return out
end
M.EndMultiSelect = M.EndMultiSelect  or function()
    jit.off(true)
    local out = C.igEndMultiSelect()
    return out
end
M.EndPopup = M.EndPopup  or function()
    jit.off(true)
    local out = C.igEndPopup()
    return out
end
M.EndTabBar = M.EndTabBar  or function()
    jit.off(true)
    local out = C.igEndTabBar()
    return out
end
M.EndTabItem = M.EndTabItem  or function()
    jit.off(true)
    local out = C.igEndTabItem()
    return out
end
M.EndTable = M.EndTable  or function()
    jit.off(true)
    local out = C.igEndTable()
    return out
end
M.EndTooltip = M.EndTooltip  or function()
    jit.off(true)
    local out = C.igEndTooltip()
    return out
end
M.ErrorCheckEndFrameFinalizeErrorTooltip = M.ErrorCheckEndFrameFinalizeErrorTooltip  or function()
    jit.off(true)
    local out = C.igErrorCheckEndFrameFinalizeErrorTooltip()
    return out
end
M.ErrorCheckUsingSetCursorPosToExtendParentBoundaries = M.ErrorCheckUsingSetCursorPosToExtendParentBoundaries  or function()
    jit.off(true)
    local out = C.igErrorCheckUsingSetCursorPosToExtendParentBoundaries()
    return out
end
M.ErrorLog = M.ErrorLog  or function(i1)
    jit.off(true)
    local out = C.igErrorLog(i1)
    return out
end
M.ErrorRecoveryStoreState = M.ErrorRecoveryStoreState  or function(i1)
    jit.off(true)
    local out = C.igErrorRecoveryStoreState(i1)
    return out
end
M.ErrorRecoveryTryToRecoverState = M.ErrorRecoveryTryToRecoverState  or function(i1)
    jit.off(true)
    local out = C.igErrorRecoveryTryToRecoverState(i1)
    return out
end
M.ErrorRecoveryTryToRecoverWindowState = M.ErrorRecoveryTryToRecoverWindowState  or function(i1)
    jit.off(true)
    local out = C.igErrorRecoveryTryToRecoverWindowState(i1)
    return out
end
M.ExtendHitBoxWhenNearViewportEdge = M.ExtendHitBoxWhenNearViewportEdge  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igExtendHitBoxWhenNearViewportEdge(i1, i2, i3, i4)
    return out
end
M.FindBestWindowPosForPopup = M.FindBestWindowPosForPopup  or function(i1)
    jit.off(true)
    local out = C.igFindBestWindowPosForPopup(i1)
    return out
end
M.FindBestWindowPosForPopupEx = M.FindBestWindowPosForPopupEx  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igFindBestWindowPosForPopupEx(i1, i2, i3, i4, i5, i6)
    return out
end
M.FindBlockingModal = M.FindBlockingModal  or function(i1)
    jit.off(true)
    local out = C.igFindBlockingModal(i1)
    return out
end
M.FindBottomMostVisibleWindowWithinBeginStack = M.FindBottomMostVisibleWindowWithinBeginStack  or function(i1)
    jit.off(true)
    local out = C.igFindBottomMostVisibleWindowWithinBeginStack(i1)
    return out
end
M.FindFrontMostVisibleChildWindow = M.FindFrontMostVisibleChildWindow  or function(i1)
    jit.off(true)
    local out = C.igFindFrontMostVisibleChildWindow(i1)
    return out
end
M.FindHoveredWindowEx = M.FindHoveredWindowEx  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igFindHoveredWindowEx(i1, i2, i3, i4)
    return out
end
M.FindOrCreateColumns = M.FindOrCreateColumns  or function(i1, i2)
    jit.off(true)
    local out = C.igFindOrCreateColumns(i1, i2)
    return out
end
M.FindRenderedTextEnd = M.FindRenderedTextEnd  or function(i1, i2)
    jit.off(true)
    local out = C.igFindRenderedTextEnd(i1, i2)
    return out
end
M.FindSettingsHandler = M.FindSettingsHandler  or function(i1)
    jit.off(true)
    local out = C.igFindSettingsHandler(i1)
    return out
end
M.FindWindowByID = M.FindWindowByID  or function(i1)
    jit.off(true)
    local out = C.igFindWindowByID(i1)
    return out
end
M.FindWindowByName = M.FindWindowByName  or function(i1)
    jit.off(true)
    local out = C.igFindWindowByName(i1)
    return out
end
M.FindWindowDisplayIndex = M.FindWindowDisplayIndex  or function(i1)
    jit.off(true)
    local out = C.igFindWindowDisplayIndex(i1)
    return out
end
M.FindWindowSettingsByID = M.FindWindowSettingsByID  or function(i1)
    jit.off(true)
    local out = C.igFindWindowSettingsByID(i1)
    return out
end
M.FindWindowSettingsByWindow = M.FindWindowSettingsByWindow  or function(i1)
    jit.off(true)
    local out = C.igFindWindowSettingsByWindow(i1)
    return out
end
M.FixupKeyChord = M.FixupKeyChord  or function(i1)
    jit.off(true)
    local out = C.igFixupKeyChord(i1)
    return out
end
M.FocusItem = M.FocusItem  or function()
    jit.off(true)
    local out = C.igFocusItem()
    return out
end
M.FocusTopMostWindowUnderOne = M.FocusTopMostWindowUnderOne  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igFocusTopMostWindowUnderOne(i1, i2, i3, i4)
    return out
end
M.FocusWindow = M.FocusWindow  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igFocusWindow(i1, i2)
    return out
end
M.GcAwakeTransientWindowBuffers = M.GcAwakeTransientWindowBuffers  or function(i1)
    jit.off(true)
    local out = C.igGcAwakeTransientWindowBuffers(i1)
    return out
end
M.GcCompactTransientMiscBuffers = M.GcCompactTransientMiscBuffers  or function()
    jit.off(true)
    local out = C.igGcCompactTransientMiscBuffers()
    return out
end
M.GcCompactTransientWindowBuffers = M.GcCompactTransientWindowBuffers  or function(i1)
    jit.off(true)
    local out = C.igGcCompactTransientWindowBuffers(i1)
    return out
end
M.GetActiveID = M.GetActiveID  or function()
    jit.off(true)
    local out = C.igGetActiveID()
    return out
end
M.GetAllocatorFunctions = M.GetAllocatorFunctions  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igGetAllocatorFunctions(i1, i2, i3)
    return out
end
M.GetBackgroundDrawList_Nil = M.GetBackgroundDrawList_Nil  or function()
    jit.off(true)
    local out = C.igGetBackgroundDrawList_Nil()
    return out
end
M.GetBackgroundDrawList_ViewportPtr = M.GetBackgroundDrawList_ViewportPtr  or function(i1)
    jit.off(true)
    local out = C.igGetBackgroundDrawList_ViewportPtr(i1)
    return out
end
M.GetBoxSelectState = M.GetBoxSelectState  or function(i1)
    jit.off(true)
    local out = C.igGetBoxSelectState(i1)
    return out
end
M.GetClipboardText = M.GetClipboardText  or function()
    jit.off(true)
    local out = C.igGetClipboardText()
    return out
end
M.GetColorU32_Col = M.GetColorU32_Col  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 1.0 end
    local out = C.igGetColorU32_Col(i1, i2)
    return out
end
M.GetColorU32_Vec4 = M.GetColorU32_Vec4  or function(i1)
    jit.off(true)
    local out = C.igGetColorU32_Vec4(i1)
    return out
end
M.GetColorU32_U32 = M.GetColorU32_U32  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 1.0 end
    local out = C.igGetColorU32_U32(i1, i2)
    return out
end
M.GetColumnIndex = M.GetColumnIndex  or function()
    jit.off(true)
    local out = C.igGetColumnIndex()
    return out
end
M.GetColumnNormFromOffset = M.GetColumnNormFromOffset  or function(i1, i2)
    jit.off(true)
    local out = C.igGetColumnNormFromOffset(i1, i2)
    return out
end
M.GetColumnOffset = M.GetColumnOffset  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igGetColumnOffset(i1)
    return out
end
M.GetColumnOffsetFromNorm = M.GetColumnOffsetFromNorm  or function(i1, i2)
    jit.off(true)
    local out = C.igGetColumnOffsetFromNorm(i1, i2)
    return out
end
M.GetColumnWidth = M.GetColumnWidth  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igGetColumnWidth(i1)
    return out
end
M.GetColumnsCount = M.GetColumnsCount  or function()
    jit.off(true)
    local out = C.igGetColumnsCount()
    return out
end
M.GetColumnsID = M.GetColumnsID  or function(i1, i2)
    jit.off(true)
    local out = C.igGetColumnsID(i1, i2)
    return out
end
M.GetContentRegionAvail = M.GetContentRegionAvail  or function()
    jit.off(true)
    local out = C.igGetContentRegionAvail()
    return out
end
M.GetCurrentContext = M.GetCurrentContext  or function()
    jit.off(true)
    local out = C.igGetCurrentContext()
    return out
end
M.GetCurrentFocusScope = M.GetCurrentFocusScope  or function()
    jit.off(true)
    local out = C.igGetCurrentFocusScope()
    return out
end
M.GetCurrentTabBar = M.GetCurrentTabBar  or function()
    jit.off(true)
    local out = C.igGetCurrentTabBar()
    return out
end
M.GetCurrentTable = M.GetCurrentTable  or function()
    jit.off(true)
    local out = C.igGetCurrentTable()
    return out
end
M.GetCurrentWindow = M.GetCurrentWindow  or function()
    jit.off(true)
    local out = C.igGetCurrentWindow()
    return out
end
M.GetCurrentWindowRead = M.GetCurrentWindowRead  or function()
    jit.off(true)
    local out = C.igGetCurrentWindowRead()
    return out
end
M.GetCursorPos = M.GetCursorPos  or function()
    jit.off(true)
    local out = C.igGetCursorPos()
    return out
end
M.GetCursorPosX = M.GetCursorPosX  or function()
    jit.off(true)
    local out = C.igGetCursorPosX()
    return out
end
M.GetCursorPosY = M.GetCursorPosY  or function()
    jit.off(true)
    local out = C.igGetCursorPosY()
    return out
end
M.GetCursorScreenPos = M.GetCursorScreenPos  or function()
    jit.off(true)
    local out = C.igGetCursorScreenPos()
    return out
end
M.GetCursorStartPos = M.GetCursorStartPos  or function()
    jit.off(true)
    local out = C.igGetCursorStartPos()
    return out
end
M.GetDefaultFont = M.GetDefaultFont  or function()
    jit.off(true)
    local out = C.igGetDefaultFont()
    return out
end
M.GetDragDropPayload = M.GetDragDropPayload  or function()
    jit.off(true)
    local out = C.igGetDragDropPayload()
    return out
end
M.GetDrawData = M.GetDrawData  or function()
    jit.off(true)
    local out = C.igGetDrawData()
    return out
end
M.GetDrawListSharedData = M.GetDrawListSharedData  or function()
    jit.off(true)
    local out = C.igGetDrawListSharedData()
    return out
end
M.GetFocusID = M.GetFocusID  or function()
    jit.off(true)
    local out = C.igGetFocusID()
    return out
end
M.GetFont = M.GetFont  or function()
    jit.off(true)
    local out = C.igGetFont()
    return out
end
M.GetFontBaked = M.GetFontBaked  or function()
    jit.off(true)
    local out = C.igGetFontBaked()
    return out
end
M.GetFontRasterizerDensity = M.GetFontRasterizerDensity  or function()
    jit.off(true)
    local out = C.igGetFontRasterizerDensity()
    return out
end
M.GetFontSize = M.GetFontSize  or function()
    jit.off(true)
    local out = C.igGetFontSize()
    return out
end
M.GetFontTexUvWhitePixel = M.GetFontTexUvWhitePixel  or function()
    jit.off(true)
    local out = C.igGetFontTexUvWhitePixel()
    return out
end
M.GetForegroundDrawList_Nil = M.GetForegroundDrawList_Nil  or function()
    jit.off(true)
    local out = C.igGetForegroundDrawList_Nil()
    return out
end
M.GetForegroundDrawList_WindowPtr = M.GetForegroundDrawList_WindowPtr  or function(i1)
    jit.off(true)
    local out = C.igGetForegroundDrawList_WindowPtr(i1)
    return out
end
M.GetForegroundDrawList_ViewportPtr = M.GetForegroundDrawList_ViewportPtr  or function(i1)
    jit.off(true)
    local out = C.igGetForegroundDrawList_ViewportPtr(i1)
    return out
end
M.GetFrameCount = M.GetFrameCount  or function()
    jit.off(true)
    local out = C.igGetFrameCount()
    return out
end
M.GetFrameHeight = M.GetFrameHeight  or function()
    jit.off(true)
    local out = C.igGetFrameHeight()
    return out
end
M.GetFrameHeightWithSpacing = M.GetFrameHeightWithSpacing  or function()
    jit.off(true)
    local out = C.igGetFrameHeightWithSpacing()
    return out
end
M.GetHoveredID = M.GetHoveredID  or function()
    jit.off(true)
    local out = C.igGetHoveredID()
    return out
end
M.GetID_Str = M.GetID_Str  or function(i1)
    jit.off(true)
    local out = C.igGetID_Str(i1)
    return out
end
M.GetID_StrStr = M.GetID_StrStr  or function(i1, i2)
    jit.off(true)
    local out = C.igGetID_StrStr(i1, i2)
    return out
end
M.GetID_Ptr = M.GetID_Ptr  or function(i1)
    jit.off(true)
    local out = C.igGetID_Ptr(i1)
    return out
end
M.GetID_Int = M.GetID_Int  or function(i1)
    jit.off(true)
    local out = C.igGetID_Int(i1)
    return out
end
M.GetIDWithSeed_Str = M.GetIDWithSeed_Str  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igGetIDWithSeed_Str(i1, i2, i3)
    return out
end
M.GetIDWithSeed_Int = M.GetIDWithSeed_Int  or function(i1, i2)
    jit.off(true)
    local out = C.igGetIDWithSeed_Int(i1, i2)
    return out
end
M.GetIO_Nil = M.GetIO_Nil  or function()
    jit.off(true)
    local out = C.igGetIO_Nil()
    return out
end
M.GetIO_ContextPtr = M.GetIO_ContextPtr  or function(i1)
    jit.off(true)
    local out = C.igGetIO_ContextPtr(i1)
    return out
end
M.GetInputTextState = M.GetInputTextState  or function(i1)
    jit.off(true)
    local out = C.igGetInputTextState(i1)
    return out
end
M.GetItemFlags = M.GetItemFlags  or function()
    jit.off(true)
    local out = C.igGetItemFlags()
    return out
end
M.GetItemID = M.GetItemID  or function()
    jit.off(true)
    local out = C.igGetItemID()
    return out
end
M.GetItemRectMax = M.GetItemRectMax  or function()
    jit.off(true)
    local out = C.igGetItemRectMax()
    return out
end
M.GetItemRectMin = M.GetItemRectMin  or function()
    jit.off(true)
    local out = C.igGetItemRectMin()
    return out
end
M.GetItemRectSize = M.GetItemRectSize  or function()
    jit.off(true)
    local out = C.igGetItemRectSize()
    return out
end
M.GetItemStatusFlags = M.GetItemStatusFlags  or function()
    jit.off(true)
    local out = C.igGetItemStatusFlags()
    return out
end
M.GetKeyChordName = M.GetKeyChordName  or function(i1)
    jit.off(true)
    local out = C.igGetKeyChordName(i1)
    return out
end
M.GetKeyData_ContextPtr = M.GetKeyData_ContextPtr  or function(i1, i2)
    jit.off(true)
    local out = C.igGetKeyData_ContextPtr(i1, i2)
    return out
end
M.GetKeyData_Key = M.GetKeyData_Key  or function(i1)
    jit.off(true)
    local out = C.igGetKeyData_Key(i1)
    return out
end
M.GetKeyMagnitude2d = M.GetKeyMagnitude2d  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igGetKeyMagnitude2d(i1, i2, i3, i4)
    return out
end
M.GetKeyName = M.GetKeyName  or function(i1)
    jit.off(true)
    local out = C.igGetKeyName(i1)
    return out
end
M.GetKeyOwner = M.GetKeyOwner  or function(i1)
    jit.off(true)
    local out = C.igGetKeyOwner(i1)
    return out
end
M.GetKeyOwnerData = M.GetKeyOwnerData  or function(i1, i2)
    jit.off(true)
    local out = C.igGetKeyOwnerData(i1, i2)
    return out
end
M.GetKeyPressedAmount = M.GetKeyPressedAmount  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igGetKeyPressedAmount(i1, i2, i3)
    return out
end
M.GetMainViewport = M.GetMainViewport  or function()
    jit.off(true)
    local out = C.igGetMainViewport()
    return out
end
M.GetMouseButtonFromPopupFlags = M.GetMouseButtonFromPopupFlags  or function(i1)
    jit.off(true)
    local out = C.igGetMouseButtonFromPopupFlags(i1)
    return out
end
M.GetMouseClickedCount = M.GetMouseClickedCount  or function(i1)
    jit.off(true)
    local out = C.igGetMouseClickedCount(i1)
    return out
end
M.GetMouseCursor = M.GetMouseCursor  or function()
    jit.off(true)
    local out = C.igGetMouseCursor()
    return out
end
M.GetMouseDragDelta = M.GetMouseDragDelta  or function(i1, i2)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    if i2 == nil then i2 = -1.0 end
    local out = C.igGetMouseDragDelta(i1, i2)
    return out
end
M.GetMousePos = M.GetMousePos  or function()
    jit.off(true)
    local out = C.igGetMousePos()
    return out
end
M.GetMousePosOnOpeningCurrentPopup = M.GetMousePosOnOpeningCurrentPopup  or function()
    jit.off(true)
    local out = C.igGetMousePosOnOpeningCurrentPopup()
    return out
end
M.GetMultiSelectState = M.GetMultiSelectState  or function(i1)
    jit.off(true)
    local out = C.igGetMultiSelectState(i1)
    return out
end
M.GetNavTweakPressedAmount = M.GetNavTweakPressedAmount  or function(i1)
    jit.off(true)
    local out = C.igGetNavTweakPressedAmount(i1)
    return out
end
M.GetPlatformIO_Nil = M.GetPlatformIO_Nil  or function()
    jit.off(true)
    local out = C.igGetPlatformIO_Nil()
    return out
end
M.GetPlatformIO_ContextPtr = M.GetPlatformIO_ContextPtr  or function(i1)
    jit.off(true)
    local out = C.igGetPlatformIO_ContextPtr(i1)
    return out
end
M.GetPopupAllowedExtentRect = M.GetPopupAllowedExtentRect  or function(i1)
    jit.off(true)
    local out = C.igGetPopupAllowedExtentRect(i1)
    return out
end
M.GetRoundedFontSize = M.GetRoundedFontSize  or function(i1)
    jit.off(true)
    local out = C.igGetRoundedFontSize(i1)
    return out
end
M.GetScale = M.GetScale  or function()
    jit.off(true)
    local out = C.igGetScale()
    return out
end
M.GetScrollMaxX = M.GetScrollMaxX  or function()
    jit.off(true)
    local out = C.igGetScrollMaxX()
    return out
end
M.GetScrollMaxY = M.GetScrollMaxY  or function()
    jit.off(true)
    local out = C.igGetScrollMaxY()
    return out
end
M.GetScrollX = M.GetScrollX  or function()
    jit.off(true)
    local out = C.igGetScrollX()
    return out
end
M.GetScrollY = M.GetScrollY  or function()
    jit.off(true)
    local out = C.igGetScrollY()
    return out
end
M.GetShortcutRoutingData = M.GetShortcutRoutingData  or function(i1)
    jit.off(true)
    local out = C.igGetShortcutRoutingData(i1)
    return out
end
M.GetStateStorage = M.GetStateStorage  or function()
    jit.off(true)
    local out = C.igGetStateStorage()
    return out
end
M.GetStyle = M.GetStyle  or function()
    jit.off(true)
    local out = C.igGetStyle()
    return out
end
M.GetStyleColorName = M.GetStyleColorName  or function(i1)
    jit.off(true)
    local out = C.igGetStyleColorName(i1)
    return out
end
M.GetStyleColorVec4 = M.GetStyleColorVec4  or function(i1)
    jit.off(true)
    local out = C.igGetStyleColorVec4(i1)
    return out
end
M.GetStyleVarInfo = M.GetStyleVarInfo  or function(i1)
    jit.off(true)
    local out = C.igGetStyleVarInfo(i1)
    return out
end
M.GetTextLineHeight = M.GetTextLineHeight  or function()
    jit.off(true)
    local out = C.igGetTextLineHeight()
    return out
end
M.GetTextLineHeightWithSpacing = M.GetTextLineHeightWithSpacing  or function()
    jit.off(true)
    local out = C.igGetTextLineHeightWithSpacing()
    return out
end
M.GetTime = M.GetTime  or function()
    jit.off(true)
    local out = C.igGetTime()
    return out
end
M.GetTopMostAndVisiblePopupModal = M.GetTopMostAndVisiblePopupModal  or function()
    jit.off(true)
    local out = C.igGetTopMostAndVisiblePopupModal()
    return out
end
M.GetTopMostPopupModal = M.GetTopMostPopupModal  or function()
    jit.off(true)
    local out = C.igGetTopMostPopupModal()
    return out
end
M.GetTreeNodeToLabelSpacing = M.GetTreeNodeToLabelSpacing  or function()
    jit.off(true)
    local out = C.igGetTreeNodeToLabelSpacing()
    return out
end
M.GetTypematicRepeatRate = M.GetTypematicRepeatRate  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igGetTypematicRepeatRate(i1, i2, i3)
    return out
end
M.GetTypingSelectRequest = M.GetTypingSelectRequest  or function(i1)
    jit.off(true)
    local out = C.igGetTypingSelectRequest(i1)
    return out
end
M.GetVersion = M.GetVersion  or function()
    jit.off(true)
    local out = C.igGetVersion()
    return out
end
M.GetWindowDrawList = M.GetWindowDrawList  or function()
    jit.off(true)
    local out = C.igGetWindowDrawList()
    return out
end
M.GetWindowHeight = M.GetWindowHeight  or function()
    jit.off(true)
    local out = C.igGetWindowHeight()
    return out
end
M.GetWindowPos = M.GetWindowPos  or function()
    jit.off(true)
    local out = C.igGetWindowPos()
    return out
end
M.GetWindowResizeBorderID = M.GetWindowResizeBorderID  or function(i1, i2)
    jit.off(true)
    local out = C.igGetWindowResizeBorderID(i1, i2)
    return out
end
M.GetWindowResizeCornerID = M.GetWindowResizeCornerID  or function(i1, i2)
    jit.off(true)
    local out = C.igGetWindowResizeCornerID(i1, i2)
    return out
end
M.GetWindowScrollbarID = M.GetWindowScrollbarID  or function(i1, i2)
    jit.off(true)
    local out = C.igGetWindowScrollbarID(i1, i2)
    return out
end
M.GetWindowScrollbarRect = M.GetWindowScrollbarRect  or function(i1, i2)
    jit.off(true)
    local out = C.igGetWindowScrollbarRect(i1, i2)
    return out
end
M.GetWindowSize = M.GetWindowSize  or function()
    jit.off(true)
    local out = C.igGetWindowSize()
    return out
end
M.GetWindowViewport = M.GetWindowViewport  or function()
    jit.off(true)
    local out = C.igGetWindowViewport()
    return out
end
M.GetWindowWidth = M.GetWindowWidth  or function()
    jit.off(true)
    local out = C.igGetWindowWidth()
    return out
end
M.ImAbs_Int = M.ImAbs_Int  or function(i1)
    jit.off(true)
    local out = C.igImAbs_Int(i1)
    return out
end
M.ImAbs_Float = M.ImAbs_Float  or function(i1)
    jit.off(true)
    local out = C.igImAbs_Float(i1)
    return out
end
M.ImAbs_double = M.ImAbs_double  or function(i1)
    jit.off(true)
    local out = C.igImAbs_double(i1)
    return out
end
M.ImAlphaBlendColors = M.ImAlphaBlendColors  or function(i1, i2)
    jit.off(true)
    local out = C.igImAlphaBlendColors(i1, i2)
    return out
end
M.ImBezierCubicCalc = M.ImBezierCubicCalc  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImBezierCubicCalc(i1, i2, i3, i4, i5)
    return out
end
M.ImBezierCubicClosestPoint = M.ImBezierCubicClosestPoint  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igImBezierCubicClosestPoint(i1, i2, i3, i4, i5, i6)
    return out
end
M.ImBezierCubicClosestPointCasteljau = M.ImBezierCubicClosestPointCasteljau  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igImBezierCubicClosestPointCasteljau(i1, i2, i3, i4, i5, i6)
    return out
end
M.ImBezierQuadraticCalc = M.ImBezierQuadraticCalc  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImBezierQuadraticCalc(i1, i2, i3, i4)
    return out
end
M.ImBitArrayClearAllBits = M.ImBitArrayClearAllBits  or function(i1, i2)
    jit.off(true)
    local out = C.igImBitArrayClearAllBits(i1, i2)
    return out
end
M.ImBitArrayClearBit = M.ImBitArrayClearBit  or function(i1, i2)
    jit.off(true)
    local out = C.igImBitArrayClearBit(i1, i2)
    return out
end
M.ImBitArrayGetStorageSizeInBytes = M.ImBitArrayGetStorageSizeInBytes  or function(i1)
    jit.off(true)
    local out = C.igImBitArrayGetStorageSizeInBytes(i1)
    return out
end
M.ImBitArraySetBit = M.ImBitArraySetBit  or function(i1, i2)
    jit.off(true)
    local out = C.igImBitArraySetBit(i1, i2)
    return out
end
M.ImBitArraySetBitRange = M.ImBitArraySetBitRange  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImBitArraySetBitRange(i1, i2, i3)
    return out
end
M.ImBitArrayTestBit = M.ImBitArrayTestBit  or function(i1, i2)
    jit.off(true)
    local out = C.igImBitArrayTestBit(i1, i2)
    return out
end
M.ImCharIsBlankA = M.ImCharIsBlankA  or function(i1)
    jit.off(true)
    local out = C.igImCharIsBlankA(i1)
    return out
end
M.ImCharIsBlankW = M.ImCharIsBlankW  or function(i1)
    jit.off(true)
    local out = C.igImCharIsBlankW(i1)
    return out
end
M.ImCharIsXdigitA = M.ImCharIsXdigitA  or function(i1)
    jit.off(true)
    local out = C.igImCharIsXdigitA(i1)
    return out
end
M.ImClamp = M.ImClamp  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImClamp(i1, i2, i3)
    return out
end
M.ImCountSetBits = M.ImCountSetBits  or function(i1)
    jit.off(true)
    local out = C.igImCountSetBits(i1)
    return out
end
M.ImDot = M.ImDot  or function(i1, i2)
    jit.off(true)
    local out = C.igImDot(i1, i2)
    return out
end
M.ImExponentialMovingAverage = M.ImExponentialMovingAverage  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImExponentialMovingAverage(i1, i2, i3)
    return out
end
M.ImFileClose = M.ImFileClose  or function(i1)
    jit.off(true)
    local out = C.igImFileClose(i1)
    return out
end
M.ImFileGetSize = M.ImFileGetSize  or function(i1)
    jit.off(true)
    local out = C.igImFileGetSize(i1)
    return out
end
M.ImFileLoadToMemory = M.ImFileLoadToMemory  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local o1 = ffi.new("size_t[1]")
    local out = C.igImFileLoadToMemory(i1, i2, o1, i3)
    return o1[0], out
end
M.ImFileOpen = M.ImFileOpen  or function(i1, i2)
    jit.off(true)
    local out = C.igImFileOpen(i1, i2)
    return out
end
M.ImFileRead = M.ImFileRead  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFileRead(i1, i2, i3, i4)
    return out
end
M.ImFileWrite = M.ImFileWrite  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFileWrite(i1, i2, i3, i4)
    return out
end
M.ImFloor_Float = M.ImFloor_Float  or function(i1)
    jit.off(true)
    local out = C.igImFloor_Float(i1)
    return out
end
M.ImFloor_Vec2 = M.ImFloor_Vec2  or function(i1)
    jit.off(true)
    local out = C.igImFloor_Vec2(i1)
    return out
end
M.ImFontAtlasAddDrawListSharedData = M.ImFontAtlasAddDrawListSharedData  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasAddDrawListSharedData(i1, i2)
    return out
end
M.ImFontAtlasBakedAdd = M.ImFontAtlasBakedAdd  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImFontAtlasBakedAdd(i1, i2, i3, i4, i5)
    return out
end
M.ImFontAtlasBakedAddFontGlyph = M.ImFontAtlasBakedAddFontGlyph  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFontAtlasBakedAddFontGlyph(i1, i2, i3, i4)
    return out
end
M.ImFontAtlasBakedAddFontGlyphAdvancedX = M.ImFontAtlasBakedAddFontGlyphAdvancedX  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImFontAtlasBakedAddFontGlyphAdvancedX(i1, i2, i3, i4, i5)
    return out
end
M.ImFontAtlasBakedDiscard = M.ImFontAtlasBakedDiscard  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasBakedDiscard(i1, i2, i3)
    return out
end
M.ImFontAtlasBakedDiscardFontGlyph = M.ImFontAtlasBakedDiscardFontGlyph  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFontAtlasBakedDiscardFontGlyph(i1, i2, i3, i4)
    return out
end
M.ImFontAtlasBakedGetClosestMatch = M.ImFontAtlasBakedGetClosestMatch  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFontAtlasBakedGetClosestMatch(i1, i2, i3, i4)
    return out
end
M.ImFontAtlasBakedGetId = M.ImFontAtlasBakedGetId  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasBakedGetId(i1, i2, i3)
    return out
end
M.ImFontAtlasBakedGetOrAdd = M.ImFontAtlasBakedGetOrAdd  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFontAtlasBakedGetOrAdd(i1, i2, i3, i4)
    return out
end
M.ImFontAtlasBakedSetFontGlyphBitmap = M.ImFontAtlasBakedSetFontGlyphBitmap  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igImFontAtlasBakedSetFontGlyphBitmap(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.ImFontAtlasBuildClear = M.ImFontAtlasBuildClear  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasBuildClear(i1)
    return out
end
M.ImFontAtlasBuildDestroy = M.ImFontAtlasBuildDestroy  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasBuildDestroy(i1)
    return out
end
M.ImFontAtlasBuildDiscardBakes = M.ImFontAtlasBuildDiscardBakes  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasBuildDiscardBakes(i1, i2)
    return out
end
M.ImFontAtlasBuildGetOversampleFactors = M.ImFontAtlasBuildGetOversampleFactors  or function(i1, i2)
    jit.off(true)
    local o1 = ffi.new("int[1]")
    local o2 = ffi.new("int[1]")
    local out = C.igImFontAtlasBuildGetOversampleFactors(i1, i2, o1, o2)
    return o1[0], o2[0], out
end
M.ImFontAtlasBuildInit = M.ImFontAtlasBuildInit  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasBuildInit(i1)
    return out
end
M.ImFontAtlasBuildLegacyPreloadAllGlyphRanges = M.ImFontAtlasBuildLegacyPreloadAllGlyphRanges  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasBuildLegacyPreloadAllGlyphRanges(i1)
    return out
end
M.ImFontAtlasBuildMain = M.ImFontAtlasBuildMain  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasBuildMain(i1)
    return out
end
M.ImFontAtlasBuildNotifySetFont = M.ImFontAtlasBuildNotifySetFont  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasBuildNotifySetFont(i1, i2, i3)
    return out
end
M.ImFontAtlasBuildRenderBitmapFromString = M.ImFontAtlasBuildRenderBitmapFromString  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.igImFontAtlasBuildRenderBitmapFromString(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.ImFontAtlasBuildSetupFontLoader = M.ImFontAtlasBuildSetupFontLoader  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasBuildSetupFontLoader(i1, i2)
    return out
end
M.ImFontAtlasBuildSetupFontSpecialGlyphs = M.ImFontAtlasBuildSetupFontSpecialGlyphs  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasBuildSetupFontSpecialGlyphs(i1, i2, i3)
    return out
end
M.ImFontAtlasBuildUpdatePointers = M.ImFontAtlasBuildUpdatePointers  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasBuildUpdatePointers(i1)
    return out
end
M.ImFontAtlasDebugLogTextureRequests = M.ImFontAtlasDebugLogTextureRequests  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasDebugLogTextureRequests(i1)
    return out
end
M.ImFontAtlasFontDestroyOutput = M.ImFontAtlasFontDestroyOutput  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasFontDestroyOutput(i1, i2)
    return out
end
M.ImFontAtlasFontDestroySourceData = M.ImFontAtlasFontDestroySourceData  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasFontDestroySourceData(i1, i2)
    return out
end
M.ImFontAtlasFontDiscardBakes = M.ImFontAtlasFontDiscardBakes  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasFontDiscardBakes(i1, i2, i3)
    return out
end
M.ImFontAtlasFontInitOutput = M.ImFontAtlasFontInitOutput  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasFontInitOutput(i1, i2)
    return out
end
M.ImFontAtlasFontRebuildOutput = M.ImFontAtlasFontRebuildOutput  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasFontRebuildOutput(i1, i2)
    return out
end
M.ImFontAtlasFontSourceAddToFont = M.ImFontAtlasFontSourceAddToFont  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasFontSourceAddToFont(i1, i2, i3)
    return out
end
M.ImFontAtlasFontSourceInit = M.ImFontAtlasFontSourceInit  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasFontSourceInit(i1, i2)
    return out
end
M.ImFontAtlasGetFontLoaderForStbTruetype = M.ImFontAtlasGetFontLoaderForStbTruetype  or function()
    jit.off(true)
    local out = C.igImFontAtlasGetFontLoaderForStbTruetype()
    return out
end
M.ImFontAtlasGetMouseCursorTexData = M.ImFontAtlasGetMouseCursorTexData  or function(i1, i2, i3, i4)
    jit.off(true)
    local o1 = M.ImVec2_Nil()
    local o2 = M.ImVec2_Nil()
    local out = C.igImFontAtlasGetMouseCursorTexData(i1, i2, o1, o2, i3, i4)
    return o1, o2, out
end
M.ImFontAtlasPackAddRect = M.ImFontAtlasPackAddRect  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImFontAtlasPackAddRect(i1, i2, i3, i4)
    return out
end
M.ImFontAtlasPackDiscardRect = M.ImFontAtlasPackDiscardRect  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasPackDiscardRect(i1, i2)
    return out
end
M.ImFontAtlasPackGetRect = M.ImFontAtlasPackGetRect  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasPackGetRect(i1, i2)
    return out
end
M.ImFontAtlasPackGetRectSafe = M.ImFontAtlasPackGetRectSafe  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasPackGetRectSafe(i1, i2)
    return out
end
M.ImFontAtlasPackInit = M.ImFontAtlasPackInit  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasPackInit(i1)
    return out
end
M.ImFontAtlasRectId_GetGeneration = M.ImFontAtlasRectId_GetGeneration  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasRectId_GetGeneration(i1)
    return out
end
M.ImFontAtlasRectId_GetIndex = M.ImFontAtlasRectId_GetIndex  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasRectId_GetIndex(i1)
    return out
end
M.ImFontAtlasRectId_Make = M.ImFontAtlasRectId_Make  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasRectId_Make(i1, i2)
    return out
end
M.ImFontAtlasRemoveDrawListSharedData = M.ImFontAtlasRemoveDrawListSharedData  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasRemoveDrawListSharedData(i1, i2)
    return out
end
M.ImFontAtlasTextureAdd = M.ImFontAtlasTextureAdd  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasTextureAdd(i1, i2, i3)
    return out
end
M.ImFontAtlasTextureBlockConvert = M.ImFontAtlasTextureBlockConvert  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igImFontAtlasTextureBlockConvert(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.ImFontAtlasTextureBlockCopy = M.ImFontAtlasTextureBlockCopy  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igImFontAtlasTextureBlockCopy(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.ImFontAtlasTextureBlockFill = M.ImFontAtlasTextureBlockFill  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igImFontAtlasTextureBlockFill(i1, i2, i3, i4, i5, i6)
    return out
end
M.ImFontAtlasTextureBlockPostProcess = M.ImFontAtlasTextureBlockPostProcess  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasTextureBlockPostProcess(i1)
    return out
end
M.ImFontAtlasTextureBlockPostProcessMultiply = M.ImFontAtlasTextureBlockPostProcessMultiply  or function(i1, i2)
    jit.off(true)
    local out = C.igImFontAtlasTextureBlockPostProcessMultiply(i1, i2)
    return out
end
M.ImFontAtlasTextureBlockQueueUpload = M.ImFontAtlasTextureBlockQueueUpload  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igImFontAtlasTextureBlockQueueUpload(i1, i2, i3, i4, i5, i6)
    return out
end
M.ImFontAtlasTextureCompact = M.ImFontAtlasTextureCompact  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasTextureCompact(i1)
    return out
end
M.ImFontAtlasTextureGetSizeEstimate = M.ImFontAtlasTextureGetSizeEstimate  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasTextureGetSizeEstimate(i1)
    return out
end
M.ImFontAtlasTextureGrow = M.ImFontAtlasTextureGrow  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = -1 end
    if i3 == nil then i3 = -1 end
    local out = C.igImFontAtlasTextureGrow(i1, i2, i3)
    return out
end
M.ImFontAtlasTextureMakeSpace = M.ImFontAtlasTextureMakeSpace  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasTextureMakeSpace(i1)
    return out
end
M.ImFontAtlasTextureRepack = M.ImFontAtlasTextureRepack  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasTextureRepack(i1, i2, i3)
    return out
end
M.ImFontAtlasUpdateDrawListsSharedData = M.ImFontAtlasUpdateDrawListsSharedData  or function(i1)
    jit.off(true)
    local out = C.igImFontAtlasUpdateDrawListsSharedData(i1)
    return out
end
M.ImFontAtlasUpdateDrawListsTextures = M.ImFontAtlasUpdateDrawListsTextures  or function(i1, i2, i3)
    jit.off(true)
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    if type(i3) ~= 'cdata' then
      i3 = M.lovr.TextureRef(i3)
    end
    local out = C.igImFontAtlasUpdateDrawListsTextures(i1, i2, i3)
    return out
end
M.ImFontAtlasUpdateNewFrame = M.ImFontAtlasUpdateNewFrame  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImFontAtlasUpdateNewFrame(i1, i2, i3)
    return out
end
M.ImFontCalcTextSizeEx = M.ImFontCalcTextSizeEx  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    local o1 = M.ImVec2_Nil()
    local out = C.igImFontCalcTextSizeEx(i1, i2, i3, i4, i5, i6, i7, i8, o1, i9)
    return o1, out
end
M.ImFontCalcWordWrapPositionEx = M.ImFontCalcWordWrapPositionEx  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = 0 end
    local out = C.igImFontCalcWordWrapPositionEx(i1, i2, i3, i4, i5, i6)
    return out
end
M.ImFormatString = M.ImFormatString  or function(i1, i2, i3, ...)
    jit.off(true)
    local out = C.igImFormatString(i1, i2, i3, ...)
    return out
end
M.ImFormatStringToTempBuffer = M.ImFormatStringToTempBuffer  or function(i1, i2, i3, ...)
    jit.off(true)
    local out = C.igImFormatStringToTempBuffer(i1, i2, i3, ...)
    return out
end
M.ImHashData = M.ImHashData  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igImHashData(i1, i2, i3)
    return out
end
M.ImHashSkipUncontributingPrefix = M.ImHashSkipUncontributingPrefix  or function(i1)
    jit.off(true)
    local out = C.igImHashSkipUncontributingPrefix(i1)
    return out
end
M.ImHashStr = M.ImHashStr  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    if i3 == nil then i3 = 0 end
    local out = C.igImHashStr(i1, i2, i3)
    return out
end
M.ImInvLength = M.ImInvLength  or function(i1, i2)
    jit.off(true)
    local out = C.igImInvLength(i1, i2)
    return out
end
M.ImIsFloatAboveGuaranteedIntegerPrecision = M.ImIsFloatAboveGuaranteedIntegerPrecision  or function(i1)
    jit.off(true)
    local out = C.igImIsFloatAboveGuaranteedIntegerPrecision(i1)
    return out
end
M.ImIsPowerOfTwo_Int = M.ImIsPowerOfTwo_Int  or function(i1)
    jit.off(true)
    local out = C.igImIsPowerOfTwo_Int(i1)
    return out
end
M.ImIsPowerOfTwo_U64 = M.ImIsPowerOfTwo_U64  or function(i1)
    jit.off(true)
    local out = C.igImIsPowerOfTwo_U64(i1)
    return out
end
M.ImLengthSqr_Vec2 = M.ImLengthSqr_Vec2  or function(i1)
    jit.off(true)
    local out = C.igImLengthSqr_Vec2(i1)
    return out
end
M.ImLengthSqr_Vec4 = M.ImLengthSqr_Vec4  or function(i1)
    jit.off(true)
    local out = C.igImLengthSqr_Vec4(i1)
    return out
end
M.ImLerp_Vec2Float = M.ImLerp_Vec2Float  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImLerp_Vec2Float(i1, i2, i3)
    return out
end
M.ImLerp_Vec2Vec2 = M.ImLerp_Vec2Vec2  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImLerp_Vec2Vec2(i1, i2, i3)
    return out
end
M.ImLerp_Vec4 = M.ImLerp_Vec4  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImLerp_Vec4(i1, i2, i3)
    return out
end
M.ImLineClosestPoint = M.ImLineClosestPoint  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImLineClosestPoint(i1, i2, i3)
    return out
end
M.ImLinearRemapClamp = M.ImLinearRemapClamp  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImLinearRemapClamp(i1, i2, i3, i4, i5)
    return out
end
M.ImLinearSweep = M.ImLinearSweep  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImLinearSweep(i1, i2, i3)
    return out
end
M.ImLog_Float = M.ImLog_Float  or function(i1)
    jit.off(true)
    local out = C.igImLog_Float(i1)
    return out
end
M.ImLog_double = M.ImLog_double  or function(i1)
    jit.off(true)
    local out = C.igImLog_double(i1)
    return out
end
M.ImLowerBound = M.ImLowerBound  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImLowerBound(i1, i2, i3)
    return out
end
M.ImMax = M.ImMax  or function(i1, i2)
    jit.off(true)
    local out = C.igImMax(i1, i2)
    return out
end
M.ImMemdup = M.ImMemdup  or function(i1, i2)
    jit.off(true)
    local out = C.igImMemdup(i1, i2)
    return out
end
M.ImMin = M.ImMin  or function(i1, i2)
    jit.off(true)
    local out = C.igImMin(i1, i2)
    return out
end
M.ImModPositive = M.ImModPositive  or function(i1, i2)
    jit.off(true)
    local out = C.igImModPositive(i1, i2)
    return out
end
M.ImMul = M.ImMul  or function(i1, i2)
    jit.off(true)
    local out = C.igImMul(i1, i2)
    return out
end
M.ImParseFormatFindEnd = M.ImParseFormatFindEnd  or function(i1)
    jit.off(true)
    local out = C.igImParseFormatFindEnd(i1)
    return out
end
M.ImParseFormatFindStart = M.ImParseFormatFindStart  or function(i1)
    jit.off(true)
    local out = C.igImParseFormatFindStart(i1)
    return out
end
M.ImParseFormatPrecision = M.ImParseFormatPrecision  or function(i1, i2)
    jit.off(true)
    local out = C.igImParseFormatPrecision(i1, i2)
    return out
end
M.ImParseFormatSanitizeForPrinting = M.ImParseFormatSanitizeForPrinting  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImParseFormatSanitizeForPrinting(i1, i2, i3)
    return out
end
M.ImParseFormatSanitizeForScanning = M.ImParseFormatSanitizeForScanning  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImParseFormatSanitizeForScanning(i1, i2, i3)
    return out
end
M.ImParseFormatTrimDecorations = M.ImParseFormatTrimDecorations  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImParseFormatTrimDecorations(i1, i2, i3)
    return out
end
M.ImPow_Float = M.ImPow_Float  or function(i1, i2)
    jit.off(true)
    local out = C.igImPow_Float(i1, i2)
    return out
end
M.ImPow_double = M.ImPow_double  or function(i1, i2)
    jit.off(true)
    local out = C.igImPow_double(i1, i2)
    return out
end
M.ImQsort = M.ImQsort  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImQsort(i1, i2, i3, i4)
    return out
end
M.ImRotate = M.ImRotate  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImRotate(i1, i2, i3)
    return out
end
M.ImRound64 = M.ImRound64  or function(i1)
    jit.off(true)
    local out = C.igImRound64(i1)
    return out
end
M.ImRsqrt_Float = M.ImRsqrt_Float  or function(i1)
    jit.off(true)
    local out = C.igImRsqrt_Float(i1)
    return out
end
M.ImRsqrt_double = M.ImRsqrt_double  or function(i1)
    jit.off(true)
    local out = C.igImRsqrt_double(i1)
    return out
end
M.ImSaturate = M.ImSaturate  or function(i1)
    jit.off(true)
    local out = C.igImSaturate(i1)
    return out
end
M.ImSign_Float = M.ImSign_Float  or function(i1)
    jit.off(true)
    local out = C.igImSign_Float(i1)
    return out
end
M.ImSign_double = M.ImSign_double  or function(i1)
    jit.off(true)
    local out = C.igImSign_double(i1)
    return out
end
M.ImStrSkipBlank = M.ImStrSkipBlank  or function(i1)
    jit.off(true)
    local out = C.igImStrSkipBlank(i1)
    return out
end
M.ImStrTrimBlanks = M.ImStrTrimBlanks  or function(i1)
    jit.off(true)
    local out = C.igImStrTrimBlanks(i1)
    return out
end
M.ImStrbol = M.ImStrbol  or function(i1, i2)
    jit.off(true)
    local out = C.igImStrbol(i1, i2)
    return out
end
M.ImStrchrRange = M.ImStrchrRange  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImStrchrRange(i1, i2, i3)
    return out
end
M.ImStrdup = M.ImStrdup  or function(i1)
    jit.off(true)
    local out = C.igImStrdup(i1)
    return out
end
M.ImStrdupcpy = M.ImStrdupcpy  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImStrdupcpy(i1, i2, i3)
    return out
end
M.ImStreolRange = M.ImStreolRange  or function(i1, i2)
    jit.off(true)
    local out = C.igImStreolRange(i1, i2)
    return out
end
M.ImStricmp = M.ImStricmp  or function(i1, i2)
    jit.off(true)
    local out = C.igImStricmp(i1, i2)
    return out
end
M.ImStristr = M.ImStristr  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImStristr(i1, i2, i3, i4)
    return out
end
M.ImStrlenW = M.ImStrlenW  or function(i1)
    jit.off(true)
    local out = C.igImStrlenW(i1)
    return out
end
M.ImStrncpy = M.ImStrncpy  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImStrncpy(i1, i2, i3)
    return out
end
M.ImStrnicmp = M.ImStrnicmp  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImStrnicmp(i1, i2, i3)
    return out
end
M.ImTextCalcWordWrapNextLineStart = M.ImTextCalcWordWrapNextLineStart  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igImTextCalcWordWrapNextLineStart(i1, i2, i3)
    return out
end
M.ImTextCharFromUtf8 = M.ImTextCharFromUtf8  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImTextCharFromUtf8(i1, i2, i3)
    return out
end
M.ImTextCharToUtf8 = M.ImTextCharToUtf8  or function(i1, i2)
    jit.off(true)
    local out = C.igImTextCharToUtf8(i1, i2)
    return out
end
M.ImTextClassifierClear = M.ImTextClassifierClear  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImTextClassifierClear(i1, i2, i3, i4)
    return out
end
M.ImTextClassifierSetCharClass = M.ImTextClassifierSetCharClass  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImTextClassifierSetCharClass(i1, i2, i3, i4, i5)
    return out
end
M.ImTextClassifierSetCharClassFromStr = M.ImTextClassifierSetCharClassFromStr  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImTextClassifierSetCharClassFromStr(i1, i2, i3, i4, i5)
    return out
end
M.ImTextCountCharsFromUtf8 = M.ImTextCountCharsFromUtf8  or function(i1, i2)
    jit.off(true)
    local out = C.igImTextCountCharsFromUtf8(i1, i2)
    return out
end
M.ImTextCountLines = M.ImTextCountLines  or function(i1, i2)
    jit.off(true)
    local out = C.igImTextCountLines(i1, i2)
    return out
end
M.ImTextCountUtf8BytesFromChar = M.ImTextCountUtf8BytesFromChar  or function(i1, i2)
    jit.off(true)
    local out = C.igImTextCountUtf8BytesFromChar(i1, i2)
    return out
end
M.ImTextCountUtf8BytesFromStr = M.ImTextCountUtf8BytesFromStr  or function(i1, i2)
    jit.off(true)
    local out = C.igImTextCountUtf8BytesFromStr(i1, i2)
    return out
end
M.ImTextFindPreviousUtf8Codepoint = M.ImTextFindPreviousUtf8Codepoint  or function(i1, i2)
    jit.off(true)
    local out = C.igImTextFindPreviousUtf8Codepoint(i1, i2)
    return out
end
M.ImTextFindValidUtf8CodepointEnd = M.ImTextFindValidUtf8CodepointEnd  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImTextFindValidUtf8CodepointEnd(i1, i2, i3)
    return out
end
M.ImTextInitClassifiers = M.ImTextInitClassifiers  or function()
    jit.off(true)
    local out = C.igImTextInitClassifiers()
    return out
end
M.ImTextStrFromUtf8 = M.ImTextStrFromUtf8  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImTextStrFromUtf8(i1, i2, i3, i4, i5)
    return out
end
M.ImTextStrToUtf8 = M.ImTextStrToUtf8  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImTextStrToUtf8(i1, i2, i3, i4)
    return out
end
M.ImTextureDataGetFormatBytesPerPixel = M.ImTextureDataGetFormatBytesPerPixel  or function(i1)
    jit.off(true)
    local out = C.igImTextureDataGetFormatBytesPerPixel(i1)
    return out
end
M.ImTextureDataGetFormatName = M.ImTextureDataGetFormatName  or function(i1)
    jit.off(true)
    local out = C.igImTextureDataGetFormatName(i1)
    return out
end
M.ImTextureDataGetStatusName = M.ImTextureDataGetStatusName  or function(i1)
    jit.off(true)
    local out = C.igImTextureDataGetStatusName(i1)
    return out
end
M.ImTextureDataQueueUpload = M.ImTextureDataQueueUpload  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igImTextureDataQueueUpload(i1, i2, i3, i4, i5)
    return out
end
M.ImToUpper = M.ImToUpper  or function(i1)
    jit.off(true)
    local out = C.igImToUpper(i1)
    return out
end
M.ImTriangleArea = M.ImTriangleArea  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImTriangleArea(i1, i2, i3)
    return out
end
M.ImTriangleBarycentricCoords = M.ImTriangleBarycentricCoords  or function(i1, i2, i3, i4)
    jit.off(true)
    local o1 = ffi.new("float[1]")
    local o2 = ffi.new("float[1]")
    local o3 = ffi.new("float[1]")
    local out = C.igImTriangleBarycentricCoords(i1, i2, i3, i4, o1, o2, o3)
    return o1[0], o2[0], o3[0], out
end
M.ImTriangleClosestPoint = M.ImTriangleClosestPoint  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImTriangleClosestPoint(i1, i2, i3, i4)
    return out
end
M.ImTriangleContainsPoint = M.ImTriangleContainsPoint  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igImTriangleContainsPoint(i1, i2, i3, i4)
    return out
end
M.ImTriangleIsClockwise = M.ImTriangleIsClockwise  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igImTriangleIsClockwise(i1, i2, i3)
    return out
end
M.ImTrunc_Float = M.ImTrunc_Float  or function(i1)
    jit.off(true)
    local out = C.igImTrunc_Float(i1)
    return out
end
M.ImTrunc_Vec2 = M.ImTrunc_Vec2  or function(i1)
    jit.off(true)
    local out = C.igImTrunc_Vec2(i1)
    return out
end
M.ImTrunc64 = M.ImTrunc64  or function(i1)
    jit.off(true)
    local out = C.igImTrunc64(i1)
    return out
end
M.ImUpperPowerOfTwo = M.ImUpperPowerOfTwo  or function(i1)
    jit.off(true)
    local out = C.igImUpperPowerOfTwo(i1)
    return out
end
M.Image = M.Image  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = M.ImVec2_Float(0, 0) end
    if i4 == nil then i4 = M.ImVec2_Float(1, 1) end
    if type(i1) ~= 'cdata' then
      i1 = M.lovr.TextureRef(i1)
    end
    local out = C.igImage(i1, i2, i3, i4)
    return out
end
M.ImageButton = M.ImageButton  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i4 == nil then i4 = M.ImVec2_Float(0, 0) end
    if i5 == nil then i5 = M.ImVec2_Float(1, 1) end
    if i6 == nil then i6 = M.ImVec4_Float(0, 0, 0, 0) end
    if i7 == nil then i7 = M.ImVec4_Float(1, 1, 1, 1) end
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.igImageButton(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.ImageButtonEx = M.ImageButtonEx  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i8 == nil then i8 = 0 end
    if type(i2) ~= 'cdata' then
      i2 = M.lovr.TextureRef(i2)
    end
    local out = C.igImageButtonEx(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.ImageWithBg = M.ImageWithBg  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i3 == nil then i3 = M.ImVec2_Float(0, 0) end
    if i4 == nil then i4 = M.ImVec2_Float(1, 1) end
    if i5 == nil then i5 = M.ImVec4_Float(0, 0, 0, 0) end
    if i6 == nil then i6 = M.ImVec4_Float(1, 1, 1, 1) end
    if type(i1) ~= 'cdata' then
      i1 = M.lovr.TextureRef(i1)
    end
    local out = C.igImageWithBg(i1, i2, i3, i4, i5, i6)
    return out
end
M.Indent = M.Indent  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0.0 end
    local out = C.igIndent(i1)
    return out
end
M.Initialize = M.Initialize  or function()
    jit.off(true)
    local out = C.igInitialize()
    return out
end
M.InputDouble = M.InputDouble  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = "%.6f" end
    if i6 == nil then i6 = 0 end
    local out = C.igInputDouble(i1, i2, i3, i4, i5, i6)
    return out
end
M.InputFloat = M.InputFloat  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    if i4 == nil then i4 = 0.0 end
    if i5 == nil then i5 = "%.3f" end
    if i6 == nil then i6 = 0 end
    local out = C.igInputFloat(i1, i2, i3, i4, i5, i6)
    return out
end
M.InputFloat2 = M.InputFloat2  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = "%.3f" end
    if i4 == nil then i4 = 0 end
    local out = C.igInputFloat2(i1, i2, i3, i4)
    return out
end
M.InputFloat3 = M.InputFloat3  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = "%.3f" end
    if i4 == nil then i4 = 0 end
    local out = C.igInputFloat3(i1, i2, i3, i4)
    return out
end
M.InputFloat4 = M.InputFloat4  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = "%.3f" end
    if i4 == nil then i4 = 0 end
    local out = C.igInputFloat4(i1, i2, i3, i4)
    return out
end
M.InputInt = M.InputInt  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i3 == nil then i3 = 1 end
    if i4 == nil then i4 = 100 end
    if i5 == nil then i5 = 0 end
    local out = C.igInputInt(i1, i2, i3, i4, i5)
    return out
end
M.InputInt2 = M.InputInt2  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igInputInt2(i1, i2, i3)
    return out
end
M.InputInt3 = M.InputInt3  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igInputInt3(i1, i2, i3)
    return out
end
M.InputInt4 = M.InputInt4  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igInputInt4(i1, i2, i3)
    return out
end
M.InputScalar = M.InputScalar  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i7 == nil then i7 = 0 end
    local out = C.igInputScalar(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.InputScalarN = M.InputScalarN  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i8 == nil then i8 = 0 end
    local out = C.igInputScalarN(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.InputText = M.InputText  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    local out = C.igInputText(i1, i2, i3, i4, i5, i6)
    return out
end
M.InputTextDeactivateHook = M.InputTextDeactivateHook  or function(i1)
    jit.off(true)
    local out = C.igInputTextDeactivateHook(i1)
    return out
end
M.InputTextEx = M.InputTextEx  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igInputTextEx(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.InputTextMultiline = M.InputTextMultiline  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i4 == nil then i4 = M.ImVec2_Float(0, 0) end
    if i5 == nil then i5 = 0 end
    local out = C.igInputTextMultiline(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.InputTextWithHint = M.InputTextWithHint  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    local out = C.igInputTextWithHint(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.InvisibleButton = M.InvisibleButton  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igInvisibleButton(i1, i2, i3)
    return out
end
M.IsActiveIdUsingNavDir = M.IsActiveIdUsingNavDir  or function(i1)
    jit.off(true)
    local out = C.igIsActiveIdUsingNavDir(i1)
    return out
end
M.IsAliasKey = M.IsAliasKey  or function(i1)
    jit.off(true)
    local out = C.igIsAliasKey(i1)
    return out
end
M.IsAnyItemActive = M.IsAnyItemActive  or function()
    jit.off(true)
    local out = C.igIsAnyItemActive()
    return out
end
M.IsAnyItemFocused = M.IsAnyItemFocused  or function()
    jit.off(true)
    local out = C.igIsAnyItemFocused()
    return out
end
M.IsAnyItemHovered = M.IsAnyItemHovered  or function()
    jit.off(true)
    local out = C.igIsAnyItemHovered()
    return out
end
M.IsAnyMouseDown = M.IsAnyMouseDown  or function()
    jit.off(true)
    local out = C.igIsAnyMouseDown()
    return out
end
M.IsClippedEx = M.IsClippedEx  or function(i1, i2)
    jit.off(true)
    local out = C.igIsClippedEx(i1, i2)
    return out
end
M.IsDragDropActive = M.IsDragDropActive  or function()
    jit.off(true)
    local out = C.igIsDragDropActive()
    return out
end
M.IsDragDropPayloadBeingAccepted = M.IsDragDropPayloadBeingAccepted  or function()
    jit.off(true)
    local out = C.igIsDragDropPayloadBeingAccepted()
    return out
end
M.IsGamepadKey = M.IsGamepadKey  or function(i1)
    jit.off(true)
    local out = C.igIsGamepadKey(i1)
    return out
end
M.IsInNavFocusRoute = M.IsInNavFocusRoute  or function(i1)
    jit.off(true)
    local out = C.igIsInNavFocusRoute(i1)
    return out
end
M.IsItemActivated = M.IsItemActivated  or function()
    jit.off(true)
    local out = C.igIsItemActivated()
    return out
end
M.IsItemActive = M.IsItemActive  or function()
    jit.off(true)
    local out = C.igIsItemActive()
    return out
end
M.IsItemActiveAsInputText = M.IsItemActiveAsInputText  or function()
    jit.off(true)
    local out = C.igIsItemActiveAsInputText()
    return out
end
M.IsItemClicked = M.IsItemClicked  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igIsItemClicked(i1)
    return out
end
M.IsItemDeactivated = M.IsItemDeactivated  or function()
    jit.off(true)
    local out = C.igIsItemDeactivated()
    return out
end
M.IsItemDeactivatedAfterEdit = M.IsItemDeactivatedAfterEdit  or function()
    jit.off(true)
    local out = C.igIsItemDeactivatedAfterEdit()
    return out
end
M.IsItemEdited = M.IsItemEdited  or function()
    jit.off(true)
    local out = C.igIsItemEdited()
    return out
end
M.IsItemFocused = M.IsItemFocused  or function()
    jit.off(true)
    local out = C.igIsItemFocused()
    return out
end
M.IsItemHovered = M.IsItemHovered  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igIsItemHovered(i1)
    return out
end
M.IsItemToggledOpen = M.IsItemToggledOpen  or function()
    jit.off(true)
    local out = C.igIsItemToggledOpen()
    return out
end
M.IsItemToggledSelection = M.IsItemToggledSelection  or function()
    jit.off(true)
    local out = C.igIsItemToggledSelection()
    return out
end
M.IsItemVisible = M.IsItemVisible  or function()
    jit.off(true)
    local out = C.igIsItemVisible()
    return out
end
M.IsKeyChordPressed_Nil = M.IsKeyChordPressed_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsKeyChordPressed_Nil(i1)
    return out
end
M.IsKeyChordPressed_InputFlags = M.IsKeyChordPressed_InputFlags  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igIsKeyChordPressed_InputFlags(i1, i2, i3)
    return out
end
M.IsKeyDown_Nil = M.IsKeyDown_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsKeyDown_Nil(i1)
    return out
end
M.IsKeyDown_ID = M.IsKeyDown_ID  or function(i1, i2)
    jit.off(true)
    local out = C.igIsKeyDown_ID(i1, i2)
    return out
end
M.IsKeyPressed_Bool = M.IsKeyPressed_Bool  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = true end
    local out = C.igIsKeyPressed_Bool(i1, i2)
    return out
end
M.IsKeyPressed_InputFlags = M.IsKeyPressed_InputFlags  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igIsKeyPressed_InputFlags(i1, i2, i3)
    return out
end
M.IsKeyReleased_Nil = M.IsKeyReleased_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsKeyReleased_Nil(i1)
    return out
end
M.IsKeyReleased_ID = M.IsKeyReleased_ID  or function(i1, i2)
    jit.off(true)
    local out = C.igIsKeyReleased_ID(i1, i2)
    return out
end
M.IsKeyboardKey = M.IsKeyboardKey  or function(i1)
    jit.off(true)
    local out = C.igIsKeyboardKey(i1)
    return out
end
M.IsLRModKey = M.IsLRModKey  or function(i1)
    jit.off(true)
    local out = C.igIsLRModKey(i1)
    return out
end
M.IsLegacyKey = M.IsLegacyKey  or function(i1)
    jit.off(true)
    local out = C.igIsLegacyKey(i1)
    return out
end
M.IsMouseClicked_Bool = M.IsMouseClicked_Bool  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = false end
    local out = C.igIsMouseClicked_Bool(i1, i2)
    return out
end
M.IsMouseClicked_InputFlags = M.IsMouseClicked_InputFlags  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igIsMouseClicked_InputFlags(i1, i2, i3)
    return out
end
M.IsMouseDoubleClicked_Nil = M.IsMouseDoubleClicked_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsMouseDoubleClicked_Nil(i1)
    return out
end
M.IsMouseDoubleClicked_ID = M.IsMouseDoubleClicked_ID  or function(i1, i2)
    jit.off(true)
    local out = C.igIsMouseDoubleClicked_ID(i1, i2)
    return out
end
M.IsMouseDown_Nil = M.IsMouseDown_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsMouseDown_Nil(i1)
    return out
end
M.IsMouseDown_ID = M.IsMouseDown_ID  or function(i1, i2)
    jit.off(true)
    local out = C.igIsMouseDown_ID(i1, i2)
    return out
end
M.IsMouseDragPastThreshold = M.IsMouseDragPastThreshold  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = -1.0 end
    local out = C.igIsMouseDragPastThreshold(i1, i2)
    return out
end
M.IsMouseDragging = M.IsMouseDragging  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = -1.0 end
    local out = C.igIsMouseDragging(i1, i2)
    return out
end
M.IsMouseHoveringRect = M.IsMouseHoveringRect  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = true end
    local out = C.igIsMouseHoveringRect(i1, i2, i3)
    return out
end
M.IsMouseKey = M.IsMouseKey  or function(i1)
    jit.off(true)
    local out = C.igIsMouseKey(i1)
    return out
end
M.IsMousePosValid = M.IsMousePosValid  or function(i1)
    jit.off(true)
    local out = C.igIsMousePosValid(i1)
    return out
end
M.IsMouseReleased_Nil = M.IsMouseReleased_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsMouseReleased_Nil(i1)
    return out
end
M.IsMouseReleased_ID = M.IsMouseReleased_ID  or function(i1, i2)
    jit.off(true)
    local out = C.igIsMouseReleased_ID(i1, i2)
    return out
end
M.IsMouseReleasedWithDelay = M.IsMouseReleasedWithDelay  or function(i1, i2)
    jit.off(true)
    local out = C.igIsMouseReleasedWithDelay(i1, i2)
    return out
end
M.IsNamedKey = M.IsNamedKey  or function(i1)
    jit.off(true)
    local out = C.igIsNamedKey(i1)
    return out
end
M.IsNamedKeyOrMod = M.IsNamedKeyOrMod  or function(i1)
    jit.off(true)
    local out = C.igIsNamedKeyOrMod(i1)
    return out
end
M.IsPopupOpen_Str = M.IsPopupOpen_Str  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igIsPopupOpen_Str(i1, i2)
    return out
end
M.IsPopupOpen_ID = M.IsPopupOpen_ID  or function(i1, i2)
    jit.off(true)
    local out = C.igIsPopupOpen_ID(i1, i2)
    return out
end
M.IsPopupOpenRequestForItem = M.IsPopupOpenRequestForItem  or function(i1, i2)
    jit.off(true)
    local out = C.igIsPopupOpenRequestForItem(i1, i2)
    return out
end
M.IsPopupOpenRequestForWindow = M.IsPopupOpenRequestForWindow  or function(i1)
    jit.off(true)
    local out = C.igIsPopupOpenRequestForWindow(i1)
    return out
end
M.IsRectVisible_Nil = M.IsRectVisible_Nil  or function(i1)
    jit.off(true)
    local out = C.igIsRectVisible_Nil(i1)
    return out
end
M.IsRectVisible_Vec2 = M.IsRectVisible_Vec2  or function(i1, i2)
    jit.off(true)
    local out = C.igIsRectVisible_Vec2(i1, i2)
    return out
end
M.IsWindowAbove = M.IsWindowAbove  or function(i1, i2)
    jit.off(true)
    local out = C.igIsWindowAbove(i1, i2)
    return out
end
M.IsWindowAppearing = M.IsWindowAppearing  or function()
    jit.off(true)
    local out = C.igIsWindowAppearing()
    return out
end
M.IsWindowChildOf = M.IsWindowChildOf  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igIsWindowChildOf(i1, i2, i3)
    return out
end
M.IsWindowCollapsed = M.IsWindowCollapsed  or function()
    jit.off(true)
    local out = C.igIsWindowCollapsed()
    return out
end
M.IsWindowContentHoverable = M.IsWindowContentHoverable  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igIsWindowContentHoverable(i1, i2)
    return out
end
M.IsWindowFocused = M.IsWindowFocused  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igIsWindowFocused(i1)
    return out
end
M.IsWindowHovered = M.IsWindowHovered  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igIsWindowHovered(i1)
    return out
end
M.IsWindowInBeginStack = M.IsWindowInBeginStack  or function(i1)
    jit.off(true)
    local out = C.igIsWindowInBeginStack(i1)
    return out
end
M.IsWindowNavFocusable = M.IsWindowNavFocusable  or function(i1)
    jit.off(true)
    local out = C.igIsWindowNavFocusable(i1)
    return out
end
M.IsWindowWithinBeginStackOf = M.IsWindowWithinBeginStackOf  or function(i1, i2)
    jit.off(true)
    local out = C.igIsWindowWithinBeginStackOf(i1, i2)
    return out
end
M.ItemAdd = M.ItemAdd  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    local out = C.igItemAdd(i1, i2, i3, i4)
    return out
end
M.ItemHoverable = M.ItemHoverable  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igItemHoverable(i1, i2, i3)
    return out
end
M.ItemSize_Vec2 = M.ItemSize_Vec2  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = -1.0 end
    local out = C.igItemSize_Vec2(i1, i2)
    return out
end
M.ItemSize_Rect = M.ItemSize_Rect  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = -1.0 end
    local out = C.igItemSize_Rect(i1, i2)
    return out
end
M.KeepAliveID = M.KeepAliveID  or function(i1)
    jit.off(true)
    local out = C.igKeepAliveID(i1)
    return out
end
M.LabelText = M.LabelText  or function(i1, i2, ...)
    jit.off(true)
    local out = C.igLabelText(i1, i2, ...)
    return out
end
M.ListBox_Str_arr = M.ListBox_Str_arr  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = -1 end
    local out = C.igListBox_Str_arr(i1, i2, i3, i4, i5)
    return out
end
M.ListBox_FnStrPtr = M.ListBox_FnStrPtr  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i6 == nil then i6 = -1 end
    local out = C.igListBox_FnStrPtr(i1, i2, i3, i4, i5, i6)
    return out
end
M.LoadIniSettingsFromDisk = M.LoadIniSettingsFromDisk  or function(i1)
    jit.off(true)
    local out = C.igLoadIniSettingsFromDisk(i1)
    return out
end
M.LoadIniSettingsFromMemory = M.LoadIniSettingsFromMemory  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igLoadIniSettingsFromMemory(i1, i2)
    return out
end
M.LocalizeGetMsg = M.LocalizeGetMsg  or function(i1)
    jit.off(true)
    local out = C.igLocalizeGetMsg(i1)
    return out
end
M.LocalizeRegisterEntries = M.LocalizeRegisterEntries  or function(i1, i2)
    jit.off(true)
    local out = C.igLocalizeRegisterEntries(i1, i2)
    return out
end
M.LogBegin = M.LogBegin  or function(i1, i2)
    jit.off(true)
    local out = C.igLogBegin(i1, i2)
    return out
end
M.LogButtons = M.LogButtons  or function()
    jit.off(true)
    local out = C.igLogButtons()
    return out
end
M.LogFinish = M.LogFinish  or function()
    jit.off(true)
    local out = C.igLogFinish()
    return out
end
M.LogRenderedText = M.LogRenderedText  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igLogRenderedText(i1, i2, i3)
    return out
end
M.LogSetNextTextDecoration = M.LogSetNextTextDecoration  or function(i1, i2)
    jit.off(true)
    local out = C.igLogSetNextTextDecoration(i1, i2)
    return out
end
M.LogText = M.LogText  or function(i1, ...)
    jit.off(true)
    local out = C.igLogText(i1, ...)
    return out
end
M.LogToBuffer = M.LogToBuffer  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igLogToBuffer(i1)
    return out
end
M.LogToClipboard = M.LogToClipboard  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igLogToClipboard(i1)
    return out
end
M.LogToFile = M.LogToFile  or function(i1, i2)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igLogToFile(i1, i2)
    return out
end
M.LogToTTY = M.LogToTTY  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igLogToTTY(i1)
    return out
end
M.MarkIniSettingsDirty_Nil = M.MarkIniSettingsDirty_Nil  or function()
    jit.off(true)
    local out = C.igMarkIniSettingsDirty_Nil()
    return out
end
M.MarkIniSettingsDirty_WindowPtr = M.MarkIniSettingsDirty_WindowPtr  or function(i1)
    jit.off(true)
    local out = C.igMarkIniSettingsDirty_WindowPtr(i1)
    return out
end
M.MarkItemEdited = M.MarkItemEdited  or function(i1)
    jit.off(true)
    local out = C.igMarkItemEdited(i1)
    return out
end
M.MemAlloc = M.MemAlloc  or function(i1)
    jit.off(true)
    local out = C.igMemAlloc(i1)
    return out
end
M.MemFree = M.MemFree  or function(i1)
    jit.off(true)
    local out = C.igMemFree(i1)
    return out
end
M.MenuItem_Bool = M.MenuItem_Bool  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = false end
    if i4 == nil then i4 = true end
    local out = C.igMenuItem_Bool(i1, i2, i3, i4)
    return out
end
M.MenuItem_BoolPtr = M.MenuItem_BoolPtr  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = true end
    local out = C.igMenuItem_BoolPtr(i1, i2, i3, i4)
    return out
end
M.MenuItemEx = M.MenuItemEx  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i4 == nil then i4 = false end
    if i5 == nil then i5 = true end
    local out = C.igMenuItemEx(i1, i2, i3, i4, i5)
    return out
end
M.MouseButtonToKey = M.MouseButtonToKey  or function(i1)
    jit.off(true)
    local out = C.igMouseButtonToKey(i1)
    return out
end
M.MultiSelectAddSetAll = M.MultiSelectAddSetAll  or function(i1, i2)
    jit.off(true)
    local out = C.igMultiSelectAddSetAll(i1, i2)
    return out
end
M.MultiSelectAddSetRange = M.MultiSelectAddSetRange  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igMultiSelectAddSetRange(i1, i2, i3, i4, i5)
    return out
end
M.MultiSelectItemFooter = M.MultiSelectItemFooter  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igMultiSelectItemFooter(i1, i2, i3)
    return out
end
M.MultiSelectItemHeader = M.MultiSelectItemHeader  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igMultiSelectItemHeader(i1, i2, i3)
    return out
end
M.NavClearPreferredPosForAxis = M.NavClearPreferredPosForAxis  or function(i1)
    jit.off(true)
    local out = C.igNavClearPreferredPosForAxis(i1)
    return out
end
M.NavHighlightActivated = M.NavHighlightActivated  or function(i1)
    jit.off(true)
    local out = C.igNavHighlightActivated(i1)
    return out
end
M.NavInitRequestApplyResult = M.NavInitRequestApplyResult  or function()
    jit.off(true)
    local out = C.igNavInitRequestApplyResult()
    return out
end
M.NavInitWindow = M.NavInitWindow  or function(i1, i2)
    jit.off(true)
    local out = C.igNavInitWindow(i1, i2)
    return out
end
M.NavMoveRequestApplyResult = M.NavMoveRequestApplyResult  or function()
    jit.off(true)
    local out = C.igNavMoveRequestApplyResult()
    return out
end
M.NavMoveRequestButNoResultYet = M.NavMoveRequestButNoResultYet  or function()
    jit.off(true)
    local out = C.igNavMoveRequestButNoResultYet()
    return out
end
M.NavMoveRequestCancel = M.NavMoveRequestCancel  or function()
    jit.off(true)
    local out = C.igNavMoveRequestCancel()
    return out
end
M.NavMoveRequestForward = M.NavMoveRequestForward  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igNavMoveRequestForward(i1, i2, i3, i4)
    return out
end
M.NavMoveRequestResolveWithLastItem = M.NavMoveRequestResolveWithLastItem  or function(i1)
    jit.off(true)
    local out = C.igNavMoveRequestResolveWithLastItem(i1)
    return out
end
M.NavMoveRequestResolveWithPastTreeNode = M.NavMoveRequestResolveWithPastTreeNode  or function(i1, i2)
    jit.off(true)
    local out = C.igNavMoveRequestResolveWithPastTreeNode(i1, i2)
    return out
end
M.NavMoveRequestSubmit = M.NavMoveRequestSubmit  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igNavMoveRequestSubmit(i1, i2, i3, i4)
    return out
end
M.NavMoveRequestTryWrapping = M.NavMoveRequestTryWrapping  or function(i1, i2)
    jit.off(true)
    local out = C.igNavMoveRequestTryWrapping(i1, i2)
    return out
end
M.NavUpdateCurrentWindowIsScrollPushableX = M.NavUpdateCurrentWindowIsScrollPushableX  or function()
    jit.off(true)
    local out = C.igNavUpdateCurrentWindowIsScrollPushableX()
    return out
end
M.NewFrame = M.NewFrame  or function()
    jit.off(true)
    local out = C.igNewFrame()
    return out
end
M.NewLine = M.NewLine  or function()
    jit.off(true)
    local out = C.igNewLine()
    return out
end
M.NextColumn = M.NextColumn  or function()
    jit.off(true)
    local out = C.igNextColumn()
    return out
end
M.OpenPopup_Str = M.OpenPopup_Str  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igOpenPopup_Str(i1, i2)
    return out
end
M.OpenPopup_ID = M.OpenPopup_ID  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igOpenPopup_ID(i1, i2)
    return out
end
M.OpenPopupEx = M.OpenPopupEx  or function(i1, i2)
    jit.off(true)
    local out = C.igOpenPopupEx(i1, i2)
    return out
end
M.OpenPopupOnItemClick = M.OpenPopupOnItemClick  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igOpenPopupOnItemClick(i1, i2)
    return out
end
M.PlotEx = M.PlotEx  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    jit.off(true)
    local out = C.igPlotEx(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    return out
end
M.PlotHistogram_FloatPtr = M.PlotHistogram_FloatPtr  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    if i6 == nil then i6 = FLT_MAX end
    if i7 == nil then i7 = FLT_MAX end
    if i8 == nil then i8 = M.ImVec2_Float(0, 0) end
    if i9 == nil then i9 = ffi.sizeof("float") end
    local out = C.igPlotHistogram_FloatPtr(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.PlotHistogram_FnFloatPtr = M.PlotHistogram_FnFloatPtr  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    if i7 == nil then i7 = FLT_MAX end
    if i8 == nil then i8 = FLT_MAX end
    if i9 == nil then i9 = M.ImVec2_Float(0, 0) end
    local out = C.igPlotHistogram_FnFloatPtr(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.PlotLines_FloatPtr = M.PlotLines_FloatPtr  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    if i6 == nil then i6 = FLT_MAX end
    if i7 == nil then i7 = FLT_MAX end
    if i8 == nil then i8 = M.ImVec2_Float(0, 0) end
    if i9 == nil then i9 = ffi.sizeof("float") end
    local out = C.igPlotLines_FloatPtr(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.PlotLines_FnFloatPtr = M.PlotLines_FnFloatPtr  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    if i5 == nil then i5 = 0 end
    if i7 == nil then i7 = FLT_MAX end
    if i8 == nil then i8 = FLT_MAX end
    if i9 == nil then i9 = M.ImVec2_Float(0, 0) end
    local out = C.igPlotLines_FnFloatPtr(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.PopClipRect = M.PopClipRect  or function()
    jit.off(true)
    local out = C.igPopClipRect()
    return out
end
M.PopColumnsBackground = M.PopColumnsBackground  or function()
    jit.off(true)
    local out = C.igPopColumnsBackground()
    return out
end
M.PopFocusScope = M.PopFocusScope  or function()
    jit.off(true)
    local out = C.igPopFocusScope()
    return out
end
M.PopFont = M.PopFont  or function()
    jit.off(true)
    local out = C.igPopFont()
    return out
end
M.PopID = M.PopID  or function()
    jit.off(true)
    local out = C.igPopID()
    return out
end
M.PopItemFlag = M.PopItemFlag  or function()
    jit.off(true)
    local out = C.igPopItemFlag()
    return out
end
M.PopItemWidth = M.PopItemWidth  or function()
    jit.off(true)
    local out = C.igPopItemWidth()
    return out
end
M.PopPasswordFont = M.PopPasswordFont  or function()
    jit.off(true)
    local out = C.igPopPasswordFont()
    return out
end
M.PopStyleColor = M.PopStyleColor  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 1 end
    local out = C.igPopStyleColor(i1)
    return out
end
M.PopStyleVar = M.PopStyleVar  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 1 end
    local out = C.igPopStyleVar(i1)
    return out
end
M.PopTextWrapPos = M.PopTextWrapPos  or function()
    jit.off(true)
    local out = C.igPopTextWrapPos()
    return out
end
M.ProgressBar = M.ProgressBar  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = M.ImVec2_Float(-FLT_MIN, 0) end
    local out = C.igProgressBar(i1, i2, i3)
    return out
end
M.PushClipRect = M.PushClipRect  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igPushClipRect(i1, i2, i3)
    return out
end
M.PushColumnClipRect = M.PushColumnClipRect  or function(i1)
    jit.off(true)
    local out = C.igPushColumnClipRect(i1)
    return out
end
M.PushColumnsBackground = M.PushColumnsBackground  or function()
    jit.off(true)
    local out = C.igPushColumnsBackground()
    return out
end
M.PushFocusScope = M.PushFocusScope  or function(i1)
    jit.off(true)
    local out = C.igPushFocusScope(i1)
    return out
end
M.PushFont = M.PushFont  or function(i1, i2)
    jit.off(true)
    local out = C.igPushFont(i1, i2)
    return out
end
M.PushID_Str = M.PushID_Str  or function(i1)
    jit.off(true)
    local out = C.igPushID_Str(i1)
    return out
end
M.PushID_StrStr = M.PushID_StrStr  or function(i1, i2)
    jit.off(true)
    local out = C.igPushID_StrStr(i1, i2)
    return out
end
M.PushID_Ptr = M.PushID_Ptr  or function(i1)
    jit.off(true)
    local out = C.igPushID_Ptr(i1)
    return out
end
M.PushID_Int = M.PushID_Int  or function(i1)
    jit.off(true)
    local out = C.igPushID_Int(i1)
    return out
end
M.PushItemFlag = M.PushItemFlag  or function(i1, i2)
    jit.off(true)
    local out = C.igPushItemFlag(i1, i2)
    return out
end
M.PushItemWidth = M.PushItemWidth  or function(i1)
    jit.off(true)
    local out = C.igPushItemWidth(i1)
    return out
end
M.PushMultiItemsWidths = M.PushMultiItemsWidths  or function(i1, i2)
    jit.off(true)
    local out = C.igPushMultiItemsWidths(i1, i2)
    return out
end
M.PushOverrideID = M.PushOverrideID  or function(i1)
    jit.off(true)
    local out = C.igPushOverrideID(i1)
    return out
end
M.PushPasswordFont = M.PushPasswordFont  or function()
    jit.off(true)
    local out = C.igPushPasswordFont()
    return out
end
M.PushStyleColor_U32 = M.PushStyleColor_U32  or function(i1, i2)
    jit.off(true)
    local out = C.igPushStyleColor_U32(i1, i2)
    return out
end
M.PushStyleColor_Vec4 = M.PushStyleColor_Vec4  or function(i1, i2)
    jit.off(true)
    local out = C.igPushStyleColor_Vec4(i1, i2)
    return out
end
M.PushStyleVar_Float = M.PushStyleVar_Float  or function(i1, i2)
    jit.off(true)
    local out = C.igPushStyleVar_Float(i1, i2)
    return out
end
M.PushStyleVar_Vec2 = M.PushStyleVar_Vec2  or function(i1, i2)
    jit.off(true)
    local out = C.igPushStyleVar_Vec2(i1, i2)
    return out
end
M.PushStyleVarX = M.PushStyleVarX  or function(i1, i2)
    jit.off(true)
    local out = C.igPushStyleVarX(i1, i2)
    return out
end
M.PushStyleVarY = M.PushStyleVarY  or function(i1, i2)
    jit.off(true)
    local out = C.igPushStyleVarY(i1, i2)
    return out
end
M.PushTextWrapPos = M.PushTextWrapPos  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0.0 end
    local out = C.igPushTextWrapPos(i1)
    return out
end
M.RadioButton_Bool = M.RadioButton_Bool  or function(i1, i2)
    jit.off(true)
    local out = C.igRadioButton_Bool(i1, i2)
    return out
end
M.RadioButton_IntPtr = M.RadioButton_IntPtr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igRadioButton_IntPtr(i1, i2, i3)
    return out
end
M.RegisterFontAtlas = M.RegisterFontAtlas  or function(i1)
    jit.off(true)
    local out = C.igRegisterFontAtlas(i1)
    return out
end
M.RegisterUserTexture = M.RegisterUserTexture  or function(i1)
    jit.off(true)
    local out = C.igRegisterUserTexture(i1)
    return out
end
M.RemoveContextHook = M.RemoveContextHook  or function(i1, i2)
    jit.off(true)
    local out = C.igRemoveContextHook(i1, i2)
    return out
end
M.RemoveSettingsHandler = M.RemoveSettingsHandler  or function(i1)
    jit.off(true)
    local out = C.igRemoveSettingsHandler(i1)
    return out
end
M.Render = M.Render  or function()
    jit.off(true)
    local out = C.igRender()
    return out
end
M.RenderArrow = M.RenderArrow  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i5 == nil then i5 = 1.0 end
    local out = C.igRenderArrow(i1, i2, i3, i4, i5)
    return out
end
M.RenderArrowPointingAt = M.RenderArrowPointingAt  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igRenderArrowPointingAt(i1, i2, i3, i4, i5)
    return out
end
M.RenderBullet = M.RenderBullet  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igRenderBullet(i1, i2, i3)
    return out
end
M.RenderCheckMark = M.RenderCheckMark  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igRenderCheckMark(i1, i2, i3, i4)
    return out
end
M.RenderColorComponentMarker = M.RenderColorComponentMarker  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igRenderColorComponentMarker(i1, i2, i3)
    return out
end
M.RenderColorRectWithAlphaCheckerboard = M.RenderColorRectWithAlphaCheckerboard  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i7 == nil then i7 = 0.0 end
    if i8 == nil then i8 = 0 end
    local out = C.igRenderColorRectWithAlphaCheckerboard(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.RenderDragDropTargetRectEx = M.RenderDragDropTargetRectEx  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igRenderDragDropTargetRectEx(i1, i2, i3)
    return out
end
M.RenderDragDropTargetRectForItem = M.RenderDragDropTargetRectForItem  or function(i1)
    jit.off(true)
    local out = C.igRenderDragDropTargetRectForItem(i1)
    return out
end
M.RenderFrame = M.RenderFrame  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    if i4 == nil then i4 = true end
    if i5 == nil then i5 = 0.0 end
    local out = C.igRenderFrame(i1, i2, i3, i4, i5)
    return out
end
M.RenderFrameBorder = M.RenderFrameBorder  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0.0 end
    local out = C.igRenderFrameBorder(i1, i2, i3)
    return out
end
M.RenderMouseCursor = M.RenderMouseCursor  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igRenderMouseCursor(i1, i2, i3, i4, i5, i6)
    return out
end
M.RenderNavCursor = M.RenderNavCursor  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igRenderNavCursor(i1, i2, i3)
    return out
end
M.RenderRectFilledInRangeH = M.RenderRectFilledInRangeH  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    local out = C.igRenderRectFilledInRangeH(i1, i2, i3, i4, i5, i6)
    return out
end
M.RenderRectFilledWithHole = M.RenderRectFilledWithHole  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igRenderRectFilledWithHole(i1, i2, i3, i4, i5)
    return out
end
M.RenderText = M.RenderText  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = true end
    local out = C.igRenderText(i1, i2, i3, i4)
    return out
end
M.RenderTextClipped = M.RenderTextClipped  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i6 == nil then i6 = M.ImVec2_Float(0, 0) end
    local out = C.igRenderTextClipped(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.RenderTextClippedEx = M.RenderTextClippedEx  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i7 == nil then i7 = M.ImVec2_Float(0, 0) end
    local out = C.igRenderTextClippedEx(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.RenderTextEllipsis = M.RenderTextEllipsis  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.igRenderTextEllipsis(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.RenderTextWrapped = M.RenderTextWrapped  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igRenderTextWrapped(i1, i2, i3, i4)
    return out
end
M.ResetMouseDragDelta = M.ResetMouseDragDelta  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igResetMouseDragDelta(i1)
    return out
end
M.SameLine = M.SameLine  or function(i1, i2)
    jit.off(true)
    if i1 == nil then i1 = 0.0 end
    if i2 == nil then i2 = -1.0 end
    local out = C.igSameLine(i1, i2)
    return out
end
M.SaveIniSettingsToDisk = M.SaveIniSettingsToDisk  or function(i1)
    jit.off(true)
    local out = C.igSaveIniSettingsToDisk(i1)
    return out
end
M.SaveIniSettingsToMemory = M.SaveIniSettingsToMemory  or function()
    jit.off(true)
    local o1 = ffi.new("size_t[1]")
    local out = C.igSaveIniSettingsToMemory(o1)
    return o1[0], out
end
M.ScaleWindowsInViewport = M.ScaleWindowsInViewport  or function(i1, i2)
    jit.off(true)
    local out = C.igScaleWindowsInViewport(i1, i2)
    return out
end
M.ScrollToBringRectIntoView = M.ScrollToBringRectIntoView  or function(i1, i2)
    jit.off(true)
    local out = C.igScrollToBringRectIntoView(i1, i2)
    return out
end
M.ScrollToItem = M.ScrollToItem  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igScrollToItem(i1)
    return out
end
M.ScrollToRect = M.ScrollToRect  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igScrollToRect(i1, i2, i3)
    return out
end
M.ScrollToRectEx = M.ScrollToRectEx  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igScrollToRectEx(i1, i2, i3)
    return out
end
M.Scrollbar = M.Scrollbar  or function(i1)
    jit.off(true)
    local out = C.igScrollbar(i1)
    return out
end
M.ScrollbarEx = M.ScrollbarEx  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i7 == nil then i7 = 0 end
    local out = C.igScrollbarEx(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.Selectable_Bool = M.Selectable_Bool  or function(i1, i2, i3, i4)
    jit.off(true)
    if i2 == nil then i2 = false end
    if i3 == nil then i3 = 0 end
    if i4 == nil then i4 = M.ImVec2_Float(0, 0) end
    local out = C.igSelectable_Bool(i1, i2, i3, i4)
    return out
end
M.Selectable_BoolPtr = M.Selectable_BoolPtr  or function(i1, i2, i3, i4)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    if i4 == nil then i4 = M.ImVec2_Float(0, 0) end
    local out = C.igSelectable_BoolPtr(i1, i2, i3, i4)
    return out
end
M.Separator = M.Separator  or function()
    jit.off(true)
    local out = C.igSeparator()
    return out
end
M.SeparatorEx = M.SeparatorEx  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 1.0 end
    local out = C.igSeparatorEx(i1, i2)
    return out
end
M.SeparatorText = M.SeparatorText  or function(i1)
    jit.off(true)
    local out = C.igSeparatorText(i1)
    return out
end
M.SeparatorTextEx = M.SeparatorTextEx  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igSeparatorTextEx(i1, i2, i3, i4)
    return out
end
M.SetActiveID = M.SetActiveID  or function(i1, i2)
    jit.off(true)
    local out = C.igSetActiveID(i1, i2)
    return out
end
M.SetActiveIdUsingAllKeyboardKeys = M.SetActiveIdUsingAllKeyboardKeys  or function()
    jit.off(true)
    local out = C.igSetActiveIdUsingAllKeyboardKeys()
    return out
end
M.SetAllocatorFunctions = M.SetAllocatorFunctions  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igSetAllocatorFunctions(i1, i2, i3)
    return out
end
M.SetClipboardText = M.SetClipboardText  or function(i1)
    jit.off(true)
    local out = C.igSetClipboardText(i1)
    return out
end
M.SetColorEditOptions = M.SetColorEditOptions  or function(i1)
    jit.off(true)
    local out = C.igSetColorEditOptions(i1)
    return out
end
M.SetColumnOffset = M.SetColumnOffset  or function(i1, i2)
    jit.off(true)
    local out = C.igSetColumnOffset(i1, i2)
    return out
end
M.SetColumnWidth = M.SetColumnWidth  or function(i1, i2)
    jit.off(true)
    local out = C.igSetColumnWidth(i1, i2)
    return out
end
M.SetContextName = M.SetContextName  or function(i1, i2)
    jit.off(true)
    local out = C.igSetContextName(i1, i2)
    return out
end
M.SetCurrentContext = M.SetCurrentContext  or function(i1)
    jit.off(true)
    local out = C.igSetCurrentContext(i1)
    return out
end
M.SetCurrentFont = M.SetCurrentFont  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igSetCurrentFont(i1, i2, i3)
    return out
end
M.SetCursorPos = M.SetCursorPos  or function(i1)
    jit.off(true)
    local out = C.igSetCursorPos(i1)
    return out
end
M.SetCursorPosX = M.SetCursorPosX  or function(i1)
    jit.off(true)
    local out = C.igSetCursorPosX(i1)
    return out
end
M.SetCursorPosY = M.SetCursorPosY  or function(i1)
    jit.off(true)
    local out = C.igSetCursorPosY(i1)
    return out
end
M.SetCursorScreenPos = M.SetCursorScreenPos  or function(i1)
    jit.off(true)
    local out = C.igSetCursorScreenPos(i1)
    return out
end
M.SetDragDropPayload = M.SetDragDropPayload  or function(i1, i2, i3, i4)
    jit.off(true)
    if i4 == nil then i4 = 0 end
    local out = C.igSetDragDropPayload(i1, i2, i3, i4)
    return out
end
M.SetFocusID = M.SetFocusID  or function(i1, i2)
    jit.off(true)
    local out = C.igSetFocusID(i1, i2)
    return out
end
M.SetFontRasterizerDensity = M.SetFontRasterizerDensity  or function(i1)
    jit.off(true)
    local out = C.igSetFontRasterizerDensity(i1)
    return out
end
M.SetHoveredID = M.SetHoveredID  or function(i1)
    jit.off(true)
    local out = C.igSetHoveredID(i1)
    return out
end
M.SetItemDefaultFocus = M.SetItemDefaultFocus  or function()
    jit.off(true)
    local out = C.igSetItemDefaultFocus()
    return out
end
M.SetItemKeyOwner_Nil = M.SetItemKeyOwner_Nil  or function(i1)
    jit.off(true)
    local out = C.igSetItemKeyOwner_Nil(i1)
    return out
end
M.SetItemKeyOwner_InputFlags = M.SetItemKeyOwner_InputFlags  or function(i1, i2)
    jit.off(true)
    local out = C.igSetItemKeyOwner_InputFlags(i1, i2)
    return out
end
M.SetItemTooltip = M.SetItemTooltip  or function(i1, ...)
    jit.off(true)
    local out = C.igSetItemTooltip(i1, ...)
    return out
end
M.SetKeyOwner = M.SetKeyOwner  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetKeyOwner(i1, i2, i3)
    return out
end
M.SetKeyOwnersForKeyChord = M.SetKeyOwnersForKeyChord  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetKeyOwnersForKeyChord(i1, i2, i3)
    return out
end
M.SetKeyboardFocusHere = M.SetKeyboardFocusHere  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    local out = C.igSetKeyboardFocusHere(i1)
    return out
end
M.SetLastItemData = M.SetLastItemData  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igSetLastItemData(i1, i2, i3, i4)
    return out
end
M.SetMouseCursor = M.SetMouseCursor  or function(i1)
    jit.off(true)
    local out = C.igSetMouseCursor(i1)
    return out
end
M.SetNavCursorVisible = M.SetNavCursorVisible  or function(i1)
    jit.off(true)
    local out = C.igSetNavCursorVisible(i1)
    return out
end
M.SetNavCursorVisibleAfterMove = M.SetNavCursorVisibleAfterMove  or function()
    jit.off(true)
    local out = C.igSetNavCursorVisibleAfterMove()
    return out
end
M.SetNavFocusScope = M.SetNavFocusScope  or function(i1)
    jit.off(true)
    local out = C.igSetNavFocusScope(i1)
    return out
end
M.SetNavID = M.SetNavID  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igSetNavID(i1, i2, i3, i4)
    return out
end
M.SetNavWindow = M.SetNavWindow  or function(i1)
    jit.off(true)
    local out = C.igSetNavWindow(i1)
    return out
end
M.SetNextFrameWantCaptureKeyboard = M.SetNextFrameWantCaptureKeyboard  or function(i1)
    jit.off(true)
    local out = C.igSetNextFrameWantCaptureKeyboard(i1)
    return out
end
M.SetNextFrameWantCaptureMouse = M.SetNextFrameWantCaptureMouse  or function(i1)
    jit.off(true)
    local out = C.igSetNextFrameWantCaptureMouse(i1)
    return out
end
M.SetNextItemAllowOverlap = M.SetNextItemAllowOverlap  or function()
    jit.off(true)
    local out = C.igSetNextItemAllowOverlap()
    return out
end
M.SetNextItemColorMarker = M.SetNextItemColorMarker  or function(i1)
    jit.off(true)
    local out = C.igSetNextItemColorMarker(i1)
    return out
end
M.SetNextItemOpen = M.SetNextItemOpen  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetNextItemOpen(i1, i2)
    return out
end
M.SetNextItemRefVal = M.SetNextItemRefVal  or function(i1, i2)
    jit.off(true)
    local out = C.igSetNextItemRefVal(i1, i2)
    return out
end
M.SetNextItemSelectionUserData = M.SetNextItemSelectionUserData  or function(i1)
    jit.off(true)
    local out = C.igSetNextItemSelectionUserData(i1)
    return out
end
M.SetNextItemShortcut = M.SetNextItemShortcut  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetNextItemShortcut(i1, i2)
    return out
end
M.SetNextItemStorageID = M.SetNextItemStorageID  or function(i1)
    jit.off(true)
    local out = C.igSetNextItemStorageID(i1)
    return out
end
M.SetNextItemWidth = M.SetNextItemWidth  or function(i1)
    jit.off(true)
    local out = C.igSetNextItemWidth(i1)
    return out
end
M.SetNextWindowBgAlpha = M.SetNextWindowBgAlpha  or function(i1)
    jit.off(true)
    local out = C.igSetNextWindowBgAlpha(i1)
    return out
end
M.SetNextWindowCollapsed = M.SetNextWindowCollapsed  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetNextWindowCollapsed(i1, i2)
    return out
end
M.SetNextWindowContentSize = M.SetNextWindowContentSize  or function(i1)
    jit.off(true)
    local out = C.igSetNextWindowContentSize(i1)
    return out
end
M.SetNextWindowFocus = M.SetNextWindowFocus  or function()
    jit.off(true)
    local out = C.igSetNextWindowFocus()
    return out
end
M.SetNextWindowPos = M.SetNextWindowPos  or function(i1, i2, i3)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    if i3 == nil then i3 = M.ImVec2_Float(0, 0) end
    local out = C.igSetNextWindowPos(i1, i2, i3)
    return out
end
M.SetNextWindowRefreshPolicy = M.SetNextWindowRefreshPolicy  or function(i1)
    jit.off(true)
    local out = C.igSetNextWindowRefreshPolicy(i1)
    return out
end
M.SetNextWindowScroll = M.SetNextWindowScroll  or function(i1)
    jit.off(true)
    local out = C.igSetNextWindowScroll(i1)
    return out
end
M.SetNextWindowSize = M.SetNextWindowSize  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetNextWindowSize(i1, i2)
    return out
end
M.SetNextWindowSizeConstraints = M.SetNextWindowSizeConstraints  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igSetNextWindowSizeConstraints(i1, i2, i3, i4)
    return out
end
M.SetScrollFromPosX_Float = M.SetScrollFromPosX_Float  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0.5 end
    local out = C.igSetScrollFromPosX_Float(i1, i2)
    return out
end
M.SetScrollFromPosX_WindowPtr = M.SetScrollFromPosX_WindowPtr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igSetScrollFromPosX_WindowPtr(i1, i2, i3)
    return out
end
M.SetScrollFromPosY_Float = M.SetScrollFromPosY_Float  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0.5 end
    local out = C.igSetScrollFromPosY_Float(i1, i2)
    return out
end
M.SetScrollFromPosY_WindowPtr = M.SetScrollFromPosY_WindowPtr  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igSetScrollFromPosY_WindowPtr(i1, i2, i3)
    return out
end
M.SetScrollHereX = M.SetScrollHereX  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0.5 end
    local out = C.igSetScrollHereX(i1)
    return out
end
M.SetScrollHereY = M.SetScrollHereY  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0.5 end
    local out = C.igSetScrollHereY(i1)
    return out
end
M.SetScrollX_Float = M.SetScrollX_Float  or function(i1)
    jit.off(true)
    local out = C.igSetScrollX_Float(i1)
    return out
end
M.SetScrollX_WindowPtr = M.SetScrollX_WindowPtr  or function(i1, i2)
    jit.off(true)
    local out = C.igSetScrollX_WindowPtr(i1, i2)
    return out
end
M.SetScrollY_Float = M.SetScrollY_Float  or function(i1)
    jit.off(true)
    local out = C.igSetScrollY_Float(i1)
    return out
end
M.SetScrollY_WindowPtr = M.SetScrollY_WindowPtr  or function(i1, i2)
    jit.off(true)
    local out = C.igSetScrollY_WindowPtr(i1, i2)
    return out
end
M.SetShortcutRouting = M.SetShortcutRouting  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igSetShortcutRouting(i1, i2, i3)
    return out
end
M.SetStateStorage = M.SetStateStorage  or function(i1)
    jit.off(true)
    local out = C.igSetStateStorage(i1)
    return out
end
M.SetTabItemClosed = M.SetTabItemClosed  or function(i1)
    jit.off(true)
    local out = C.igSetTabItemClosed(i1)
    return out
end
M.SetTooltip = M.SetTooltip  or function(i1, ...)
    jit.off(true)
    local out = C.igSetTooltip(i1, ...)
    return out
end
M.SetWindowClipRectBeforeSetChannel = M.SetWindowClipRectBeforeSetChannel  or function(i1, i2)
    jit.off(true)
    local out = C.igSetWindowClipRectBeforeSetChannel(i1, i2)
    return out
end
M.SetWindowCollapsed_Bool = M.SetWindowCollapsed_Bool  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetWindowCollapsed_Bool(i1, i2)
    return out
end
M.SetWindowCollapsed_Str = M.SetWindowCollapsed_Str  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetWindowCollapsed_Str(i1, i2, i3)
    return out
end
M.SetWindowCollapsed_WindowPtr = M.SetWindowCollapsed_WindowPtr  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetWindowCollapsed_WindowPtr(i1, i2, i3)
    return out
end
M.SetWindowFocus_Nil = M.SetWindowFocus_Nil  or function()
    jit.off(true)
    local out = C.igSetWindowFocus_Nil()
    return out
end
M.SetWindowFocus_Str = M.SetWindowFocus_Str  or function(i1)
    jit.off(true)
    local out = C.igSetWindowFocus_Str(i1)
    return out
end
M.SetWindowHiddenAndSkipItemsForCurrentFrame = M.SetWindowHiddenAndSkipItemsForCurrentFrame  or function(i1)
    jit.off(true)
    local out = C.igSetWindowHiddenAndSkipItemsForCurrentFrame(i1)
    return out
end
M.SetWindowHitTestHole = M.SetWindowHitTestHole  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igSetWindowHitTestHole(i1, i2, i3)
    return out
end
M.SetWindowParentWindowForFocusRoute = M.SetWindowParentWindowForFocusRoute  or function(i1, i2)
    jit.off(true)
    local out = C.igSetWindowParentWindowForFocusRoute(i1, i2)
    return out
end
M.SetWindowPos_Vec2 = M.SetWindowPos_Vec2  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetWindowPos_Vec2(i1, i2)
    return out
end
M.SetWindowPos_Str = M.SetWindowPos_Str  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetWindowPos_Str(i1, i2, i3)
    return out
end
M.SetWindowPos_WindowPtr = M.SetWindowPos_WindowPtr  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetWindowPos_WindowPtr(i1, i2, i3)
    return out
end
M.SetWindowSize_Vec2 = M.SetWindowSize_Vec2  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igSetWindowSize_Vec2(i1, i2)
    return out
end
M.SetWindowSize_Str = M.SetWindowSize_Str  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetWindowSize_Str(i1, i2, i3)
    return out
end
M.SetWindowSize_WindowPtr = M.SetWindowSize_WindowPtr  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igSetWindowSize_WindowPtr(i1, i2, i3)
    return out
end
M.SetWindowViewport = M.SetWindowViewport  or function(i1, i2)
    jit.off(true)
    local out = C.igSetWindowViewport(i1, i2)
    return out
end
M.ShadeVertsLinearColorGradientKeepAlpha = M.ShadeVertsLinearColorGradientKeepAlpha  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.igShadeVertsLinearColorGradientKeepAlpha(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.ShadeVertsLinearUV = M.ShadeVertsLinearUV  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igShadeVertsLinearUV(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.ShadeVertsTransformPos = M.ShadeVertsTransformPos  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    local out = C.igShadeVertsTransformPos(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.Shortcut_Nil = M.Shortcut_Nil  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igShortcut_Nil(i1, i2)
    return out
end
M.Shortcut_ID = M.Shortcut_ID  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igShortcut_ID(i1, i2, i3)
    return out
end
M.ShowAboutWindow = M.ShowAboutWindow  or function(i1)
    jit.off(true)
    local out = C.igShowAboutWindow(i1)
    return out
end
M.ShowDebugLogWindow = M.ShowDebugLogWindow  or function(i1)
    jit.off(true)
    local out = C.igShowDebugLogWindow(i1)
    return out
end
M.ShowDemoWindow = M.ShowDemoWindow  or function(i1)
    jit.off(true)
    local out = C.igShowDemoWindow(i1)
    return out
end
M.ShowFontAtlas = M.ShowFontAtlas  or function(i1)
    jit.off(true)
    local out = C.igShowFontAtlas(i1)
    return out
end
M.ShowFontSelector = M.ShowFontSelector  or function(i1)
    jit.off(true)
    local out = C.igShowFontSelector(i1)
    return out
end
M.ShowIDStackToolWindow = M.ShowIDStackToolWindow  or function(i1)
    jit.off(true)
    local out = C.igShowIDStackToolWindow(i1)
    return out
end
M.ShowMetricsWindow = M.ShowMetricsWindow  or function(i1)
    jit.off(true)
    local out = C.igShowMetricsWindow(i1)
    return out
end
M.ShowStyleEditor = M.ShowStyleEditor  or function(i1)
    jit.off(true)
    local out = C.igShowStyleEditor(i1)
    return out
end
M.ShowStyleSelector = M.ShowStyleSelector  or function(i1)
    jit.off(true)
    local out = C.igShowStyleSelector(i1)
    return out
end
M.ShowUserGuide = M.ShowUserGuide  or function()
    jit.off(true)
    local out = C.igShowUserGuide()
    return out
end
M.ShrinkWidths = M.ShrinkWidths  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igShrinkWidths(i1, i2, i3, i4)
    return out
end
M.Shutdown = M.Shutdown  or function()
    jit.off(true)
    local out = C.igShutdown()
    return out
end
M.SliderAngle = M.SliderAngle  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i3 == nil then i3 = -360.0 end
    if i4 == nil then i4 = 360.0 end
    if i5 == nil then i5 = "%.0f deg" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderAngle(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderBehavior = M.SliderBehavior  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    jit.off(true)
    local out = C.igSliderBehavior(i1, i2, i3, i4, i5, i6, i7, i8, i9)
    return out
end
M.SliderFloat = M.SliderFloat  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%.3f" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderFloat(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderFloat2 = M.SliderFloat2  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%.3f" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderFloat2(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderFloat3 = M.SliderFloat3  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%.3f" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderFloat3(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderFloat4 = M.SliderFloat4  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%.3f" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderFloat4(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderInt = M.SliderInt  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%d" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderInt(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderInt2 = M.SliderInt2  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%d" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderInt2(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderInt3 = M.SliderInt3  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%d" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderInt3(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderInt4 = M.SliderInt4  or function(i1, i2, i3, i4, i5, i6)
    jit.off(true)
    if i5 == nil then i5 = "%d" end
    if i6 == nil then i6 = 0 end
    local out = C.igSliderInt4(i1, i2, i3, i4, i5, i6)
    return out
end
M.SliderScalar = M.SliderScalar  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i7 == nil then i7 = 0 end
    local out = C.igSliderScalar(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.SliderScalarN = M.SliderScalarN  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i8 == nil then i8 = 0 end
    local out = C.igSliderScalarN(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.SmallButton = M.SmallButton  or function(i1)
    jit.off(true)
    local out = C.igSmallButton(i1)
    return out
end
M.Spacing = M.Spacing  or function()
    jit.off(true)
    local out = C.igSpacing()
    return out
end
M.SplitterBehavior = M.SplitterBehavior  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    jit.off(true)
    if i8 == nil then i8 = 0.0 end
    if i9 == nil then i9 = 0.0 end
    if i10 == nil then i10 = 0 end
    local out = C.igSplitterBehavior(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    return out
end
M.StartMouseMovingWindow = M.StartMouseMovingWindow  or function(i1)
    jit.off(true)
    local out = C.igStartMouseMovingWindow(i1)
    return out
end
M.StopMouseMovingWindow = M.StopMouseMovingWindow  or function()
    jit.off(true)
    local out = C.igStopMouseMovingWindow()
    return out
end
M.StyleColorsClassic = M.StyleColorsClassic  or function(i1)
    jit.off(true)
    local out = C.igStyleColorsClassic(i1)
    return out
end
M.StyleColorsDark = M.StyleColorsDark  or function(i1)
    jit.off(true)
    local out = C.igStyleColorsDark(i1)
    return out
end
M.StyleColorsLight = M.StyleColorsLight  or function(i1)
    jit.off(true)
    local out = C.igStyleColorsLight(i1)
    return out
end
M.TabBarCloseTab = M.TabBarCloseTab  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarCloseTab(i1, i2)
    return out
end
M.TabBarFindByID = M.TabBarFindByID  or function(i1)
    jit.off(true)
    local out = C.igTabBarFindByID(i1)
    return out
end
M.TabBarFindTabByID = M.TabBarFindTabByID  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarFindTabByID(i1, i2)
    return out
end
M.TabBarFindTabByOrder = M.TabBarFindTabByOrder  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarFindTabByOrder(i1, i2)
    return out
end
M.TabBarGetCurrentTab = M.TabBarGetCurrentTab  or function(i1)
    jit.off(true)
    local out = C.igTabBarGetCurrentTab(i1)
    return out
end
M.TabBarGetTabName = M.TabBarGetTabName  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarGetTabName(i1, i2)
    return out
end
M.TabBarGetTabOrder = M.TabBarGetTabOrder  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarGetTabOrder(i1, i2)
    return out
end
M.TabBarProcessReorder = M.TabBarProcessReorder  or function(i1)
    jit.off(true)
    local out = C.igTabBarProcessReorder(i1)
    return out
end
M.TabBarQueueFocus_TabItemPtr = M.TabBarQueueFocus_TabItemPtr  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarQueueFocus_TabItemPtr(i1, i2)
    return out
end
M.TabBarQueueFocus_Str = M.TabBarQueueFocus_Str  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarQueueFocus_Str(i1, i2)
    return out
end
M.TabBarQueueReorder = M.TabBarQueueReorder  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igTabBarQueueReorder(i1, i2, i3)
    return out
end
M.TabBarQueueReorderFromMousePos = M.TabBarQueueReorderFromMousePos  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igTabBarQueueReorderFromMousePos(i1, i2, i3)
    return out
end
M.TabBarRemove = M.TabBarRemove  or function(i1)
    jit.off(true)
    local out = C.igTabBarRemove(i1)
    return out
end
M.TabBarRemoveTab = M.TabBarRemoveTab  or function(i1, i2)
    jit.off(true)
    local out = C.igTabBarRemoveTab(i1, i2)
    return out
end
M.TabItemBackground = M.TabItemBackground  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igTabItemBackground(i1, i2, i3, i4)
    return out
end
M.TabItemButton = M.TabItemButton  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igTabItemButton(i1, i2)
    return out
end
M.TabItemCalcSize_Str = M.TabItemCalcSize_Str  or function(i1, i2)
    jit.off(true)
    local out = C.igTabItemCalcSize_Str(i1, i2)
    return out
end
M.TabItemCalcSize_WindowPtr = M.TabItemCalcSize_WindowPtr  or function(i1)
    jit.off(true)
    local out = C.igTabItemCalcSize_WindowPtr(i1)
    return out
end
M.TabItemEx = M.TabItemEx  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igTabItemEx(i1, i2, i3, i4, i5)
    return out
end
M.TabItemLabelAndCloseButton = M.TabItemLabelAndCloseButton  or function(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    jit.off(true)
    local out = C.igTabItemLabelAndCloseButton(i1, i2, i3, i4, i5, i6, i7, i8, i9, i10)
    return out
end
M.TabItemSpacing = M.TabItemSpacing  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igTabItemSpacing(i1, i2, i3)
    return out
end
M.TableAngledHeadersRow = M.TableAngledHeadersRow  or function()
    jit.off(true)
    local out = C.igTableAngledHeadersRow()
    return out
end
M.TableAngledHeadersRowEx = M.TableAngledHeadersRowEx  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igTableAngledHeadersRowEx(i1, i2, i3, i4, i5)
    return out
end
M.TableApplyExternalUnclipRect = M.TableApplyExternalUnclipRect  or function(i1, i2)
    jit.off(true)
    local out = C.igTableApplyExternalUnclipRect(i1, i2)
    return out
end
M.TableBeginApplyRequests = M.TableBeginApplyRequests  or function(i1)
    jit.off(true)
    local out = C.igTableBeginApplyRequests(i1)
    return out
end
M.TableBeginCell = M.TableBeginCell  or function(i1, i2)
    jit.off(true)
    local out = C.igTableBeginCell(i1, i2)
    return out
end
M.TableBeginContextMenuPopup = M.TableBeginContextMenuPopup  or function(i1)
    jit.off(true)
    local out = C.igTableBeginContextMenuPopup(i1)
    return out
end
M.TableBeginInitMemory = M.TableBeginInitMemory  or function(i1, i2)
    jit.off(true)
    local out = C.igTableBeginInitMemory(i1, i2)
    return out
end
M.TableBeginRow = M.TableBeginRow  or function(i1)
    jit.off(true)
    local out = C.igTableBeginRow(i1)
    return out
end
M.TableCalcMaxColumnWidth = M.TableCalcMaxColumnWidth  or function(i1, i2)
    jit.off(true)
    local out = C.igTableCalcMaxColumnWidth(i1, i2)
    return out
end
M.TableDrawBorders = M.TableDrawBorders  or function(i1)
    jit.off(true)
    local out = C.igTableDrawBorders(i1)
    return out
end
M.TableDrawDefaultContextMenu = M.TableDrawDefaultContextMenu  or function(i1, i2)
    jit.off(true)
    local out = C.igTableDrawDefaultContextMenu(i1, i2)
    return out
end
M.TableEndCell = M.TableEndCell  or function(i1)
    jit.off(true)
    local out = C.igTableEndCell(i1)
    return out
end
M.TableEndRow = M.TableEndRow  or function(i1)
    jit.off(true)
    local out = C.igTableEndRow(i1)
    return out
end
M.TableFindByID = M.TableFindByID  or function(i1)
    jit.off(true)
    local out = C.igTableFindByID(i1)
    return out
end
M.TableFixColumnSortDirection = M.TableFixColumnSortDirection  or function(i1, i2)
    jit.off(true)
    local out = C.igTableFixColumnSortDirection(i1, i2)
    return out
end
M.TableFixDisplayOrder = M.TableFixDisplayOrder  or function(i1)
    jit.off(true)
    local out = C.igTableFixDisplayOrder(i1)
    return out
end
M.TableGcCompactSettings = M.TableGcCompactSettings  or function()
    jit.off(true)
    local out = C.igTableGcCompactSettings()
    return out
end
M.TableGcCompactTransientBuffers_TablePtr = M.TableGcCompactTransientBuffers_TablePtr  or function(i1)
    jit.off(true)
    local out = C.igTableGcCompactTransientBuffers_TablePtr(i1)
    return out
end
M.TableGcCompactTransientBuffers_TableTempDataPtr = M.TableGcCompactTransientBuffers_TableTempDataPtr  or function(i1)
    jit.off(true)
    local out = C.igTableGcCompactTransientBuffers_TableTempDataPtr(i1)
    return out
end
M.TableGetBoundSettings = M.TableGetBoundSettings  or function(i1)
    jit.off(true)
    local out = C.igTableGetBoundSettings(i1)
    return out
end
M.TableGetCellBgRect = M.TableGetCellBgRect  or function(i1, i2)
    jit.off(true)
    local out = C.igTableGetCellBgRect(i1, i2)
    return out
end
M.TableGetColumnCount = M.TableGetColumnCount  or function()
    jit.off(true)
    local out = C.igTableGetColumnCount()
    return out
end
M.TableGetColumnFlags = M.TableGetColumnFlags  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igTableGetColumnFlags(i1)
    return out
end
M.TableGetColumnIndex = M.TableGetColumnIndex  or function()
    jit.off(true)
    local out = C.igTableGetColumnIndex()
    return out
end
M.TableGetColumnName_Int = M.TableGetColumnName_Int  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igTableGetColumnName_Int(i1)
    return out
end
M.TableGetColumnName_TablePtr = M.TableGetColumnName_TablePtr  or function(i1, i2)
    jit.off(true)
    local out = C.igTableGetColumnName_TablePtr(i1, i2)
    return out
end
M.TableGetColumnNextSortDirection = M.TableGetColumnNextSortDirection  or function(i1)
    jit.off(true)
    local out = C.igTableGetColumnNextSortDirection(i1)
    return out
end
M.TableGetColumnResizeID = M.TableGetColumnResizeID  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igTableGetColumnResizeID(i1, i2, i3)
    return out
end
M.TableGetColumnWidthAuto = M.TableGetColumnWidthAuto  or function(i1, i2)
    jit.off(true)
    local out = C.igTableGetColumnWidthAuto(i1, i2)
    return out
end
M.TableGetHeaderAngledMaxLabelWidth = M.TableGetHeaderAngledMaxLabelWidth  or function()
    jit.off(true)
    local out = C.igTableGetHeaderAngledMaxLabelWidth()
    return out
end
M.TableGetHeaderRowHeight = M.TableGetHeaderRowHeight  or function()
    jit.off(true)
    local out = C.igTableGetHeaderRowHeight()
    return out
end
M.TableGetHoveredColumn = M.TableGetHoveredColumn  or function()
    jit.off(true)
    local out = C.igTableGetHoveredColumn()
    return out
end
M.TableGetHoveredRow = M.TableGetHoveredRow  or function()
    jit.off(true)
    local out = C.igTableGetHoveredRow()
    return out
end
M.TableGetInstanceData = M.TableGetInstanceData  or function(i1, i2)
    jit.off(true)
    local out = C.igTableGetInstanceData(i1, i2)
    return out
end
M.TableGetInstanceID = M.TableGetInstanceID  or function(i1, i2)
    jit.off(true)
    local out = C.igTableGetInstanceID(i1, i2)
    return out
end
M.TableGetRowIndex = M.TableGetRowIndex  or function()
    jit.off(true)
    local out = C.igTableGetRowIndex()
    return out
end
M.TableGetSortSpecs = M.TableGetSortSpecs  or function()
    jit.off(true)
    local out = C.igTableGetSortSpecs()
    return out
end
M.TableHeader = M.TableHeader  or function(i1)
    jit.off(true)
    local out = C.igTableHeader(i1)
    return out
end
M.TableHeadersRow = M.TableHeadersRow  or function()
    jit.off(true)
    local out = C.igTableHeadersRow()
    return out
end
M.TableLoadSettings = M.TableLoadSettings  or function(i1)
    jit.off(true)
    local out = C.igTableLoadSettings(i1)
    return out
end
M.TableMergeDrawChannels = M.TableMergeDrawChannels  or function(i1)
    jit.off(true)
    local out = C.igTableMergeDrawChannels(i1)
    return out
end
M.TableNextColumn = M.TableNextColumn  or function()
    jit.off(true)
    local out = C.igTableNextColumn()
    return out
end
M.TableNextRow = M.TableNextRow  or function(i1, i2)
    jit.off(true)
    if i1 == nil then i1 = 0 end
    if i2 == nil then i2 = 0.0 end
    local out = C.igTableNextRow(i1, i2)
    return out
end
M.TableOpenContextMenu = M.TableOpenContextMenu  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = -1 end
    local out = C.igTableOpenContextMenu(i1)
    return out
end
M.TablePopBackgroundChannel = M.TablePopBackgroundChannel  or function()
    jit.off(true)
    local out = C.igTablePopBackgroundChannel()
    return out
end
M.TablePopColumnChannel = M.TablePopColumnChannel  or function()
    jit.off(true)
    local out = C.igTablePopColumnChannel()
    return out
end
M.TablePushBackgroundChannel = M.TablePushBackgroundChannel  or function()
    jit.off(true)
    local out = C.igTablePushBackgroundChannel()
    return out
end
M.TablePushColumnChannel = M.TablePushColumnChannel  or function(i1)
    jit.off(true)
    local out = C.igTablePushColumnChannel(i1)
    return out
end
M.TableQueueSetColumnDisplayOrder = M.TableQueueSetColumnDisplayOrder  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igTableQueueSetColumnDisplayOrder(i1, i2, i3)
    return out
end
M.TableRemove = M.TableRemove  or function(i1)
    jit.off(true)
    local out = C.igTableRemove(i1)
    return out
end
M.TableResetSettings = M.TableResetSettings  or function(i1)
    jit.off(true)
    local out = C.igTableResetSettings(i1)
    return out
end
M.TableSaveSettings = M.TableSaveSettings  or function(i1)
    jit.off(true)
    local out = C.igTableSaveSettings(i1)
    return out
end
M.TableSetBgColor = M.TableSetBgColor  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = -1 end
    local out = C.igTableSetBgColor(i1, i2, i3)
    return out
end
M.TableSetColumnDisplayOrder = M.TableSetColumnDisplayOrder  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igTableSetColumnDisplayOrder(i1, i2, i3)
    return out
end
M.TableSetColumnEnabled = M.TableSetColumnEnabled  or function(i1, i2)
    jit.off(true)
    local out = C.igTableSetColumnEnabled(i1, i2)
    return out
end
M.TableSetColumnIndex = M.TableSetColumnIndex  or function(i1)
    jit.off(true)
    local out = C.igTableSetColumnIndex(i1)
    return out
end
M.TableSetColumnSortDirection = M.TableSetColumnSortDirection  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igTableSetColumnSortDirection(i1, i2, i3)
    return out
end
M.TableSetColumnWidth = M.TableSetColumnWidth  or function(i1, i2)
    jit.off(true)
    local out = C.igTableSetColumnWidth(i1, i2)
    return out
end
M.TableSetColumnWidthAutoAll = M.TableSetColumnWidthAutoAll  or function(i1)
    jit.off(true)
    local out = C.igTableSetColumnWidthAutoAll(i1)
    return out
end
M.TableSetColumnWidthAutoSingle = M.TableSetColumnWidthAutoSingle  or function(i1, i2)
    jit.off(true)
    local out = C.igTableSetColumnWidthAutoSingle(i1, i2)
    return out
end
M.TableSettingsAddSettingsHandler = M.TableSettingsAddSettingsHandler  or function()
    jit.off(true)
    local out = C.igTableSettingsAddSettingsHandler()
    return out
end
M.TableSettingsCreate = M.TableSettingsCreate  or function(i1, i2)
    jit.off(true)
    local out = C.igTableSettingsCreate(i1, i2)
    return out
end
M.TableSettingsFindByID = M.TableSettingsFindByID  or function(i1)
    jit.off(true)
    local out = C.igTableSettingsFindByID(i1)
    return out
end
M.TableSetupColumn = M.TableSetupColumn  or function(i1, i2, i3, i4)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    if i3 == nil then i3 = 0.0 end
    if i4 == nil then i4 = 0 end
    local out = C.igTableSetupColumn(i1, i2, i3, i4)
    return out
end
M.TableSetupDrawChannels = M.TableSetupDrawChannels  or function(i1)
    jit.off(true)
    local out = C.igTableSetupDrawChannels(i1)
    return out
end
M.TableSetupScrollFreeze = M.TableSetupScrollFreeze  or function(i1, i2)
    jit.off(true)
    local out = C.igTableSetupScrollFreeze(i1, i2)
    return out
end
M.TableSortSpecsBuild = M.TableSortSpecsBuild  or function(i1)
    jit.off(true)
    local out = C.igTableSortSpecsBuild(i1)
    return out
end
M.TableSortSpecsSanitize = M.TableSortSpecsSanitize  or function(i1)
    jit.off(true)
    local out = C.igTableSortSpecsSanitize(i1)
    return out
end
M.TableUpdateBorders = M.TableUpdateBorders  or function(i1)
    jit.off(true)
    local out = C.igTableUpdateBorders(i1)
    return out
end
M.TableUpdateColumnsWeightFromWidth = M.TableUpdateColumnsWeightFromWidth  or function(i1)
    jit.off(true)
    local out = C.igTableUpdateColumnsWeightFromWidth(i1)
    return out
end
M.TableUpdateLayout = M.TableUpdateLayout  or function(i1)
    jit.off(true)
    local out = C.igTableUpdateLayout(i1)
    return out
end
M.TeleportMousePos = M.TeleportMousePos  or function(i1)
    jit.off(true)
    local out = C.igTeleportMousePos(i1)
    return out
end
M.TempInputIsActive = M.TempInputIsActive  or function(i1)
    jit.off(true)
    local out = C.igTempInputIsActive(i1)
    return out
end
M.TempInputScalar = M.TempInputScalar  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    local out = C.igTempInputScalar(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.TempInputText = M.TempInputText  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i6 == nil then i6 = 0 end
    local out = C.igTempInputText(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.TestKeyOwner = M.TestKeyOwner  or function(i1, i2)
    jit.off(true)
    local out = C.igTestKeyOwner(i1, i2)
    return out
end
M.TestShortcutRouting = M.TestShortcutRouting  or function(i1, i2)
    jit.off(true)
    local out = C.igTestShortcutRouting(i1, i2)
    return out
end
M.Text = M.Text  or function(i1, ...)
    jit.off(true)
    local out = C.igText(i1, ...)
    return out
end
M.TextAligned = M.TextAligned  or function(i1, i2, i3, ...)
    jit.off(true)
    local out = C.igTextAligned(i1, i2, i3, ...)
    return out
end
M.TextColored = M.TextColored  or function(i1, i2, ...)
    jit.off(true)
    local out = C.igTextColored(i1, i2, ...)
    return out
end
M.TextDisabled = M.TextDisabled  or function(i1, ...)
    jit.off(true)
    local out = C.igTextDisabled(i1, ...)
    return out
end
M.TextEx = M.TextEx  or function(i1, i2, i3)
    jit.off(true)
    if i3 == nil then i3 = 0 end
    local out = C.igTextEx(i1, i2, i3)
    return out
end
M.TextLink = M.TextLink  or function(i1)
    jit.off(true)
    local out = C.igTextLink(i1)
    return out
end
M.TextLinkOpenURL = M.TextLinkOpenURL  or function(i1, i2)
    jit.off(true)
    local out = C.igTextLinkOpenURL(i1, i2)
    return out
end
M.TextUnformatted = M.TextUnformatted  or function(i1, i2)
    jit.off(true)
    local out = C.igTextUnformatted(i1, i2)
    return out
end
M.TextWrapped = M.TextWrapped  or function(i1, ...)
    jit.off(true)
    local out = C.igTextWrapped(i1, ...)
    return out
end
M.TreeNode_Str = M.TreeNode_Str  or function(i1)
    jit.off(true)
    local out = C.igTreeNode_Str(i1)
    return out
end
M.TreeNode_StrStr = M.TreeNode_StrStr  or function(i1, i2, ...)
    jit.off(true)
    local out = C.igTreeNode_StrStr(i1, i2, ...)
    return out
end
M.TreeNode_Ptr = M.TreeNode_Ptr  or function(i1, i2, ...)
    jit.off(true)
    local out = C.igTreeNode_Ptr(i1, i2, ...)
    return out
end
M.TreeNodeBehavior = M.TreeNodeBehavior  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igTreeNodeBehavior(i1, i2, i3, i4)
    return out
end
M.TreeNodeDrawLineToChildNode = M.TreeNodeDrawLineToChildNode  or function(i1)
    jit.off(true)
    local out = C.igTreeNodeDrawLineToChildNode(i1)
    return out
end
M.TreeNodeDrawLineToTreePop = M.TreeNodeDrawLineToTreePop  or function(i1)
    jit.off(true)
    local out = C.igTreeNodeDrawLineToTreePop(i1)
    return out
end
M.TreeNodeEx_Str = M.TreeNodeEx_Str  or function(i1, i2)
    jit.off(true)
    if i2 == nil then i2 = 0 end
    local out = C.igTreeNodeEx_Str(i1, i2)
    return out
end
M.TreeNodeEx_StrStr = M.TreeNodeEx_StrStr  or function(i1, i2, i3, ...)
    jit.off(true)
    local out = C.igTreeNodeEx_StrStr(i1, i2, i3, ...)
    return out
end
M.TreeNodeEx_Ptr = M.TreeNodeEx_Ptr  or function(i1, i2, i3, ...)
    jit.off(true)
    local out = C.igTreeNodeEx_Ptr(i1, i2, i3, ...)
    return out
end
M.TreeNodeGetOpen = M.TreeNodeGetOpen  or function(i1)
    jit.off(true)
    local out = C.igTreeNodeGetOpen(i1)
    return out
end
M.TreeNodeSetOpen = M.TreeNodeSetOpen  or function(i1, i2)
    jit.off(true)
    local out = C.igTreeNodeSetOpen(i1, i2)
    return out
end
M.TreeNodeUpdateNextOpen = M.TreeNodeUpdateNextOpen  or function(i1, i2)
    jit.off(true)
    local out = C.igTreeNodeUpdateNextOpen(i1, i2)
    return out
end
M.TreePop = M.TreePop  or function()
    jit.off(true)
    local out = C.igTreePop()
    return out
end
M.TreePush_Str = M.TreePush_Str  or function(i1)
    jit.off(true)
    local out = C.igTreePush_Str(i1)
    return out
end
M.TreePush_Ptr = M.TreePush_Ptr  or function(i1)
    jit.off(true)
    local out = C.igTreePush_Ptr(i1)
    return out
end
M.TreePushOverrideID = M.TreePushOverrideID  or function(i1)
    jit.off(true)
    local out = C.igTreePushOverrideID(i1)
    return out
end
M.TypingSelectFindBestLeadingMatch = M.TypingSelectFindBestLeadingMatch  or function(i1, i2, i3, i4)
    jit.off(true)
    local out = C.igTypingSelectFindBestLeadingMatch(i1, i2, i3, i4)
    return out
end
M.TypingSelectFindMatch = M.TypingSelectFindMatch  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igTypingSelectFindMatch(i1, i2, i3, i4, i5)
    return out
end
M.TypingSelectFindNextSingleCharMatch = M.TypingSelectFindNextSingleCharMatch  or function(i1, i2, i3, i4, i5)
    jit.off(true)
    local out = C.igTypingSelectFindNextSingleCharMatch(i1, i2, i3, i4, i5)
    return out
end
M.Unindent = M.Unindent  or function(i1)
    jit.off(true)
    if i1 == nil then i1 = 0.0 end
    local out = C.igUnindent(i1)
    return out
end
M.UnregisterFontAtlas = M.UnregisterFontAtlas  or function(i1)
    jit.off(true)
    local out = C.igUnregisterFontAtlas(i1)
    return out
end
M.UnregisterUserTexture = M.UnregisterUserTexture  or function(i1)
    jit.off(true)
    local out = C.igUnregisterUserTexture(i1)
    return out
end
M.UpdateCurrentFontSize = M.UpdateCurrentFontSize  or function(i1)
    jit.off(true)
    local out = C.igUpdateCurrentFontSize(i1)
    return out
end
M.UpdateHoveredWindowAndCaptureFlags = M.UpdateHoveredWindowAndCaptureFlags  or function(i1)
    jit.off(true)
    local out = C.igUpdateHoveredWindowAndCaptureFlags(i1)
    return out
end
M.UpdateInputEvents = M.UpdateInputEvents  or function(i1)
    jit.off(true)
    local out = C.igUpdateInputEvents(i1)
    return out
end
M.UpdateMouseMovingWindowEndFrame = M.UpdateMouseMovingWindowEndFrame  or function()
    jit.off(true)
    local out = C.igUpdateMouseMovingWindowEndFrame()
    return out
end
M.UpdateMouseMovingWindowNewFrame = M.UpdateMouseMovingWindowNewFrame  or function()
    jit.off(true)
    local out = C.igUpdateMouseMovingWindowNewFrame()
    return out
end
M.UpdateWindowParentAndRootLinks = M.UpdateWindowParentAndRootLinks  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igUpdateWindowParentAndRootLinks(i1, i2, i3)
    return out
end
M.UpdateWindowSkipRefresh = M.UpdateWindowSkipRefresh  or function(i1)
    jit.off(true)
    local out = C.igUpdateWindowSkipRefresh(i1)
    return out
end
M.VSliderFloat = M.VSliderFloat  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i6 == nil then i6 = "%.3f" end
    if i7 == nil then i7 = 0 end
    local out = C.igVSliderFloat(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.VSliderInt = M.VSliderInt  or function(i1, i2, i3, i4, i5, i6, i7)
    jit.off(true)
    if i6 == nil then i6 = "%d" end
    if i7 == nil then i7 = 0 end
    local out = C.igVSliderInt(i1, i2, i3, i4, i5, i6, i7)
    return out
end
M.VSliderScalar = M.VSliderScalar  or function(i1, i2, i3, i4, i5, i6, i7, i8)
    jit.off(true)
    if i8 == nil then i8 = 0 end
    local out = C.igVSliderScalar(i1, i2, i3, i4, i5, i6, i7, i8)
    return out
end
M.Value_Bool = M.Value_Bool  or function(i1, i2)
    jit.off(true)
    local out = C.igValue_Bool(i1, i2)
    return out
end
M.Value_Int = M.Value_Int  or function(i1, i2)
    jit.off(true)
    local out = C.igValue_Int(i1, i2)
    return out
end
M.Value_Uint = M.Value_Uint  or function(i1, i2)
    jit.off(true)
    local out = C.igValue_Uint(i1, i2)
    return out
end
M.Value_Float = M.Value_Float  or function(i1, i2, i3)
    jit.off(true)
    local out = C.igValue_Float(i1, i2, i3)
    return out
end
M.WindowPosAbsToRel = M.WindowPosAbsToRel  or function(i1, i2)
    jit.off(true)
    local out = C.igWindowPosAbsToRel(i1, i2)
    return out
end
M.WindowPosRelToAbs = M.WindowPosRelToAbs  or function(i1, i2)
    jit.off(true)
    local out = C.igWindowPosRelToAbs(i1, i2)
    return out
end
M.WindowRectAbsToRel = M.WindowRectAbsToRel  or function(i1, i2)
    jit.off(true)
    local out = C.igWindowRectAbsToRel(i1, i2)
    return out
end
M.WindowRectRelToAbs = M.WindowRectRelToAbs  or function(i1, i2)
    jit.off(true)
    local out = C.igWindowRectRelToAbs(i1, i2)
    return out
end