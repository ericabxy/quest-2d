local character = require('src.character')
local tilemap = require('src.tilemap')
local rom_basictiles = require('src.rom_basictiles')
local rom_board001 = require('src.rom_board001')
local rom_bitmap_font_futuristic = require('src.rom_bitmap_font_futuristic')

player0 = character:new{ x = 128, y = 128 }
tilemap0 = tilemap:new{
  texture = rom_basictiles.texture,
  ['.'] = love.graphics.newQuad(0, 224, 16, 16, 128, 240),
  ['~'] = rom_basictiles.quads[12],
  ['#'] = rom_basictiles.quads[39],
}
tilemap0:add_strings(unpack(rom_board001))

function love.update(dt)
  local char0, char1 = tilemap0:get_char_at(8, 5)
  player0:joystick_move(tilemap0.maps[2])
  player0:move(dt)
end

function love.draw()
  tilemap0:paint(0, 48)
  player0:paint()
  love.graphics.setFont(rom_bitmap_font_futuristic)
  local x, y = player0:get_position()
  love.graphics.print(x, 0, 0)
  love.graphics.print(y, 0, 8)
  love.graphics.print(select(2, tilemap0:get_char_at(x, y - 3)), 0, 16)
end
