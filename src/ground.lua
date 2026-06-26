local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local tile = require('src.tile')

-- @module src.grass
local ground = tile:new{
  texture = gfx_basic_tile_set.texture,
  quad = gfx_basic_tile_set.quads[36]
}

-- Constructor.
function ground:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return ground
