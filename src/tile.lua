local rectangle = require('src.rectangle')

local tile = rectangle:new{
  texture = nil,  -- Must be initialized.
  quad = nil,  -- Must be initialized.
  width = 16,
  height = 16,
  solid = false
}

function tile:draw(xoffset, yoffset)
  xoffset, yoffset = xoffset or 0, yoffset or 0
  local x = math.floor(self.x * self.width) - xoffset
  local x = math.floor(self.y * self.height) - yoffset
  love.graphics.draw(self.texture, self.quad, x, y)
end

-- Constructor.
function tile:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return tile
