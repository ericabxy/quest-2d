local quads = {}
for y = 0, 32, 16 do for x = 0, 496, 16 do
  table.insert(quads, love.graphics.newQuad( x, y, 16, 16, 512, 48 ))
end end
quads['G'] = love.graphics.newQuad(16, 16, 16, 16, 512, 48)
quads['.'] = love.graphics.newQuad(48, 16, 16, 16, 512, 48)
quads['R'] = love.graphics.newQuad(112, 0, 16, 16, 512, 48)
quads['='] = love.graphics.newQuad(176, 0, 16, 16, 512, 48)
quads['"'] = love.graphics.newQuad(224, 32, 16, 16, 512, 48)
quads['_'] = love.graphics.newQuad(240, 0, 16, 16, 512, 48)
quads[','] = love.graphics.newQuad(240, 16, 16, 16, 512, 48)
quads['^'] = love.graphics.newQuad(240, 32, 16, 16, 512, 48)
quads['#'] = love.graphics.newQuad(256, 0, 16, 16, 512, 48)
quads['T'] = love.graphics.newQuad(272, 0, 16, 16, 512, 48)
quads['I'] = love.graphics.newQuad(272, 16, 16, 16, 512, 48)
quads['L'] = love.graphics.newQuad(272, 32, 16, 16, 512, 48)
quads['~'] = love.graphics.newQuad(336, 16, 16, 16, 512, 48)
return {
  texture = love.graphics.newImage('share/devurandom_rpgtile1.png'),
  quads = quads
}
