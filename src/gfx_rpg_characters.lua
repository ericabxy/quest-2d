local quads = {}
for y = 0, 112, 16 do for x = 0, 176, 16 do
  table.insert(quads, love.graphics.newQuad(x, y, 16, 16, 192, 128))
end end
local down = {}
for n = 1, 8 do
  down[n] = {}
end
return {
  bard = love.graphics.newImage('share/erbarlow_nes_style_rpg_characters_bard.png'),
  conjurer = love.graphics.newImage('share/erbarlow_nes_style_rpg_characters_conjurer.png'),
  devout = love.graphics.newImage('share/erbarlow_nes_style_rpg_characters_devout.png'),
  scout = love.graphics.newImage('share/erbarlow_nes_style_rpg_characters_scout.png'),
  --sentry = love.graphics.newImage('share/erbarlow_nes_style_rpg_characters_sentry.png'),
  soldier = love.graphics.newImage('share/erbarlow_nes_style_rpg_characters_soldier.png'),
  down = { quads[2], quads[1], quads[2], quads[3] },
  left = { quads[14], quads[13], quads[14], quads[15] },
  right = { quads[26], quads[25], quads[26], quads[27] },
  up = { quads[38], quads[37], quads[38], quads[39] }
}
