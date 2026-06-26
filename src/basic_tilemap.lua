local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local tilemap = require('src.tilemap')

local basic_tilemap = tilemap:new{
  texture = gfx_basic_tile_set.texture,
  quads = gfx_basic_tile_set.quads,
  tiles = {
    ['.'] = require('src.ground'),
    ['G'] = require('src.grass'),
    ['~'] = require('src.water'),
    ['#'] = require('src.stone'),
    [','] = require('src.floor'),
    ['_'] = require('src.floor'),
    ['I'] = require('src.pillar'),
    ['^'] = require('src.stairs'),
    ['v'] = require('src.stairs'),
    ['"'] = require('src.planks'),
    ['='] = require('src.bridge'),
    ['R'] = require('src.road'),
  }
}

-- Constructor.
function basic_tilemap:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return basic_tilemap
