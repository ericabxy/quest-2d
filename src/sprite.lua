local sprite = {
  animation_timer = 0,
  ox = 0,
  oy = 0,
  x = 0,
  y = 0
}

function sprite:draw(xoffset, yoffset)
  xoffset, yoffset = xoffset or 0, yoffset or 0
  love.graphics.draw(self.texture, self.quad, math.floor(self.ox + self.x + xoffset), math.floor(self.oy + self.y + yoffset))
  --love.graphics.rectangle('line', self.x + x - 6, self.y + y - 6, 13, 13)
end

function sprite:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return sprite
