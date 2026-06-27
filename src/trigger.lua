local rectangle = require('src.rectangle')

local trigger = rectangle:new{
  destination = false,  -- Must be initialized.
  position_x = 1,
  position_y = 1
}

function trigger:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return trigger
