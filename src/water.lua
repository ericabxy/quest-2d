local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local tile = require('src.tile')

-- @module src.grass
local water = tile:new{
  texture = gfx_basic_tile_set.texture,
  quad = gfx_basic_tile_set.quads[54],
  solid = true
}

-- Constructor.
function water:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return water
