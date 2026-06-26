local character = require('src.character')
local tilemap = require('src.tilemap')
local rom_level0 = require('src.rom_level0')
local rom_basictiles = require('src.rom_basictiles')
local rom_board001 = dofile('level0/001')
local rom_bitmap_font_futuristic = require('src.rom_bitmap_font_futuristic')
local gfx_basic_tile_set = require('src.gfx_basic_tile_set')

local board_x = 7
local board_y = 7
player0 = character:new{ x = 128, y = 128 }
tilemap0 = tilemap:new(gfx_basic_tile_set)
tilemap0:add_strings(require('stage_mockup1'))

function love.update(dt)
  if dt > 1 / 60 then dt = 1 / 60 end
  local char0, char1 = tilemap0:get_char_at(8, 5)
  player0:joystick_move(tilemap0.maps[1])
  player0:move(dt)
end

function love.draw()
  tilemap0:paint(-128, 0)
  player0:paint(-128, 0)
end
