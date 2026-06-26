local character = require('src.character')
local tilemap = require('src.tilemap')
local rom_level0 = require('src.rom_level0')
local rom_basictiles = require('src.rom_basictiles')
local rom_board001 = dofile('level0/001')
local rom_bitmap_font_futuristic = require('src.rom_bitmap_font_futuristic')
local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local window = require('src.window')

local window0 = window:new()
player0 = character:new{ x = 128, y = 128 }
tilemap0 = tilemap:new(gfx_basic_tile_set)
tilemap0:add_strings(require('stage_mockup1'))

function love.update(dt)
  if dt > 1 / 60 then dt = 1 / 60 end
  local char0, char1 = tilemap0:get_char_at(8, 5)
  player0:joystick_move(tilemap0.maps[1])
  player0:move(dt)
  window.x = player0.x + player0.ox - 160
  window.y = player0.y + player0.oy - 120
  if window.x < 0 then window.x = 0 elseif window.x > (tilemap0.width * 16) - 320 then window.x = (tilemap0.width * 16) - 320 end
  if window.y < 0 then window.y = 0 elseif window.y > (tilemap0.height * 16) - 240 then window.y = (tilemap0.height * 16) - 240 end
end

function love.draw()
  tilemap0:paint(-window.x, -window.y)
  window0:draw_objects{ player0 }
end
