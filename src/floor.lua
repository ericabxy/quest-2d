local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local tile = require('src.tile')

-- @module src.floor
local floor = tile:new{
  texture = gfx_basic_tile_set.texture,
  quad = gfx_basic_tile_set.quads[48]
}

-- Constructor.
function floor:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return floor
