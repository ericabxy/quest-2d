local rom_characters = require('src.rom_characters')
local gfx_rpg_characters = require('src.gfx_rpg_characters')
local _ = require('src.const_libretro')
local sprite = require('src.sprite')

local character = sprite:new{
  controller_number = 1,
  texture = gfx_rpg_characters.bard,
  quad = gfx_rpg_characters.down[2],
  quads = gfx_rpg_characters.down,
  width = 16,
  height = 16,
  speed = 50,
  dx = 0,
  dy = 0,
}

function character:get_position()
  return math.floor(self.x / 16) + 1, math.floor(self.y / 16) + 1
end

function character:is_moving()
  return self.dx ~= 0 or self.dy ~= 0
end

function character:joystick_move(map)
  local x, y = 0, 0
  if love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_UP) then
    self.quads = gfx_rpg_characters.up
    x, y = 0, -1
  elseif love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_DOWN) then
    self.quads = gfx_rpg_characters.down
    x, y = 0, 1
  elseif love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_LEFT) then
    self.quads = gfx_rpg_characters.left
    x, y = -1, 0
  elseif love.joystick.isDown(1, RETRO_DEVICE_ID_JOYPAD_RIGHT) then
    self.quads = gfx_rpg_characters.right
    x, y = 1, 0
  end
  local dx, dy = self:get_position()
  dx, dy = dx + x, dy + y
  if map:is_solid_at(dx, dy) then return end
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
  local frames_per_second = 7
  local number_of_frames = 4
  if self.dx ~= 0 then
    self.quad = self.quads[1 + math.floor(love.timer.getTime() * frames_per_second) % number_of_frames]
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
    self.quad = self.quads[1 + math.floor(love.timer.getTime() * frames_per_second) % number_of_frames]
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

-- Constructor.
function character:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return character
