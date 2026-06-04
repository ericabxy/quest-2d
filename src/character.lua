local rom_characters = require('src.rom_characters')
local const_libretro = require('src.const_libretro')
local sprite = require('src.sprite')

local character = sprite:new{
  controller_number = 1,
  texture = rom_characters.texture,
  quad = rom_characters.boy.down[2],
  quads = rom_characters.boy.down,
  width = 16,
  height = 16,
  speed = 100,
  dx = 0,
  dy = 0,
}

character.quad = character.quads[2]

function character:init()
  table.insert(self.quads, 1, rom_characters.boy.down[2])  -- Duplicate one frame for walking animations.
  return self
end

function character:get_position()
  return math.floor(self.x / 16) + 1, math.floor(self.y / 16) + 1
end

function character:is_moving()
  return self.dx ~= 0 or self.dy ~= 0
end

function character:joystick_move(map)
  local x, y = 0, 0
  if love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_UP) then x, y = 0, -1
  elseif love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_DOWN) then x, y = 0, 1
  elseif love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_LEFT) then x, y = -1, 0
  elseif love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_RIGHT) then x, y = 1, 0
  end
  local dx, dy = self:get_position()
  dx, dy = dx + x, dy + y - 3
  if map[dx][dy] == '#' then return end
  if not self:is_moving() then
    local space_empty = true
    if space_empty then
      self:start_moving(x, y)
    end
  end
end

function character:start_moving(x, y)
  if self.dx == 0 and self.dy == 0 then
    self.dx, self.dy = x, y
    return true
  end
end

function character:move(dt)
  if self.dx ~= 0 then
    self.ox = self.ox + self.dx * dt * self.speed
    if self.ox < -self.width then
      self.x = self.x - self.width
      self.ox = 0
      self.dx = 0
      return true
    elseif self.ox > self.width then
      self.x = self.x + self.width
      self.ox = 0
      self.dx = 0
      return true
    end
  end
  if self.dy ~= 0 then
    self.oy = self.oy + self.dy * dt * self.speed
    if self.oy < -self.height then
      self.y = self.y - self.height
      self.oy = 0
      self.dy = 0
      return true
    elseif self.oy > self.height then
      self.y = self.y + self.height
      self.oy = 0
      self.dy = 0
      return true
    end
  end
end

function character:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o:init()
end

return character
