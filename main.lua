local character = require('src.character')
local tilemap = require('src.tilemap')
local rom_level0 = require('src.rom_level0')
local rom_basictiles = require('src.rom_basictiles')
local rom_board001 = dofile('level0/001')
local rom_bitmap_font_futuristic = require('src.rom_bitmap_font_futuristic')
local bgm = love.audio.newSource('share/avgvsta_jrpg_opening.wav', 'static')
bgm:setLooping(true)

local board_x = 7
local board_y = 7
player0 = character:new{ x = 128, y = 128 }
tilemap0 = tilemap:new{
  texture = rom_basictiles.texture,
  ['.'] = love.graphics.newQuad(0, 224, 16, 16, 128, 240),
  ['~'] = rom_basictiles.quads[12],
  ['#'] = rom_basictiles.quads[39],
}
tilemap1 = tilemap:new{
  texture = rom_basictiles.texture,
  ['.'] = love.graphics.newQuad(0, 224, 16, 16, 128, 240),
  ['~'] = rom_basictiles.quads[12],
  ['#'] = rom_basictiles.quads[39],
}
tilemap0:add_strings(unpack(rom_board001))
tilemap1:add_strings(unpack(rom_board001))

function love.update(dt)
  local char0, char1 = tilemap0:get_char_at(8, 5)
  player0:joystick_move(tilemap0.maps[2])
  player0:move(dt)
  if player0.x == -16 then
    player0.x = 240
    board_x = (board_x - 1) % 16
  elseif player0.y == -16 then
    player0.y = 160
    board_y = (board_y - 1) % 8
  elseif player0.x == 256 then
    player0.x = 0
    board_x = (board_x + 1) % 16
  elseif player0.y == 176 then
    player0.y = 0
    board_y = (board_y + 1) % 8
  end
  if love.timer.getTime() > 5 and not bgm:isPlaying() then
    love.audio.play(bgm)
  end
end

function love.draw()
  love.graphics.setColor(255, 255, 255)
  tilemap0:paint(32, 48)
  player0:paint(32, 48)
  love.graphics.setFont(rom_bitmap_font_futuristic)
  love.graphics.setColor(0, 0, 0)
  love.graphics.rectangle('fill', 32, 0, 256, 48)
  love.graphics.rectangle('fill', 32, 224, 256, 48)
  love.graphics.rectangle('fill', 0, 48, 32, 176)
  love.graphics.rectangle('fill', 288, 48, 32, 176)
  love.graphics.setColor(85, 85, 85)
  love.graphics.rectangle('fill', 32, 0, 96, 48)
  love.graphics.setColor(170, 255, 170)
  if math.floor(love.timer.getTime() * 5) % 2 == 0 then
    love.graphics.rectangle('fill', 33 + 6 * board_x, 1 + 6 * board_y, 4, 4)
  end
end
