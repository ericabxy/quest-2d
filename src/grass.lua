local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local tile = require('src.tile')

-- @module src.grass
local grass = tile:new{
  texture = gfx_basic_tile_set.texture,
  quad = gfx_basic_tile_set.quads[34]
}

-- Constructor.
function grass:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return grass
