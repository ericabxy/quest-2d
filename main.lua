local character = require('src.character')
local tilemap = require('src.tilemap')
local rom_level0 = require('src.rom_level0')
local rom_basictiles = require('src.rom_basictiles')
local rom_bitmap_font_futuristic = require('src.rom_bitmap_font_futuristic')
local gfx_basic_tile_set = require('src.gfx_basic_tile_set')
local basic_tilemap = require('src.basic_tilemap')
local trigger = require('src.trigger')
local window = require('src.window')

local tilemap0 = basic_tilemap:new()
tilemap0:load_string(require( 'stage_mockup1' ))
local window0 = window:new()
local player0 = character:new{ x = 128, y = 128 }
tilemap0.map[29][6]:set_destination('castle_floor_2', 5, 4)

function love.update(dt)
  if dt > 1 / 60 then dt = 1 / 60 end
  player0:joystick_move(tilemap0)
  local t = player0:move(dt, tilemap0)
  if t and type(t.destination) == 'table' then
    print(t.destination.x, t.destination.y, t.destination.filename)
    player0.x = t.destination.x * 16
    player0.y = t.destination.y * 16
    tilemap0:load_string(dofile( t.destination.filename .. '.lua' ))
  end
  window.x = player0.x + player0.ox - 160
  window.y = player0.y + player0.oy - 120
  if window.x < 0 then window.x = 0 elseif window.x > (tilemap0.width * 16) - 320 then window.x = (tilemap0.width * 16) - 320 end
  if window.y < 0 then window.y = 0 elseif window.y > (tilemap0.height * 16) - 240 then window.y = (tilemap0.height * 16) - 240 end
end

function love.draw()
  tilemap0:draw(window.x, window.y)
  window0:draw_objects{ player0 }
end
