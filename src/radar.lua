local STEPW = 6
local STEPH = 6
local BLIPW = 4
local BLIPH = 4
local BLIPOX = 1
local BLIPOY = 1

local radar = {
  width = 96,
  height = 48,
  x = 32,
  y = 0,
  blip = {
    x = 8,
    y = 8
  }
}

function radar:paint(x, y)
  x, y = x or 0, y or 0
  love.graphics.setColor(85, 85, 85)
  love.graphics.rectangle('fill', x + self.x, y + self.y, self.width, self.height)
  love.graphics.setColor(170, 255, 170)
  if math.floor(love.timer.getTime() * 5) % 2 == 0 then
    love.graphics.rectangle('fill', x + BLIPOX + STEPX * x, y + BLIPOY + STEPY * y, BLIPW, BLIPH)
  end
end

function radar:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return radar
