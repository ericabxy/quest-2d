local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local tile = require('src.tile')

-- @module src.bridge
local bridge = tile:new{
  texture = gfx_basic_tile_set.texture,
  quad = gfx_basic_tile_set.quads[12]
}

-- Constructor.
function bridge:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return bridge
