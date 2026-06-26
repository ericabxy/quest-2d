local tilemap = {
  texture = false,  -- Must be initialized with a texture in order to work.
  maps = {},
}

function tilemap:add_string(str)
  self.width = #(str:match("[^\n]+"))
  self.height = 0
  local map = {}
  for x = 1, self.width, 1 do map[x] = {} end  
  local rowIndex, columnIndex = 1, 1
  for row in str:gmatch("[^\n]+") do
    assert(#row == self.width,
      'Map is not aligned: width of row ' .. tostring(rowIndex) ..
      ' should be ' .. tostring(self.width) ..
      ', but it is ' .. tostring(#row)
    )
    columnIndex = 1
    for character in row:gmatch(".") do
      map[columnIndex][rowIndex] = character
      columnIndex = columnIndex + 1
    end
    self.height = self.height + 1
    rowIndex=rowIndex+1
  end
  table.insert(self.maps, map)
end

function tilemap:add_strings(...)
  for _, str in ipairs({...}) do
    self:add_string(str)
  end
end

function tilemap:get_char_at(x, y)
  local chars = {}
  for _, map in ipairs(self.maps) do
    table.insert(chars, map[x][y])
  end
  return unpack(chars)
end

function tilemap:paint(dx, dy)
  dx, dy = dx or 0, dy or 0
  for mi, map in ipairs(self.maps) do
    for ci, col in ipairs(map) do
      for ri, char in ipairs(col) do
        local x, y = (ci - 1) * 16, (ri - 1) * 16
        love.graphics.draw(self.texture, self[char], dx + x, dy + y)
      end
    end
  end
end

function tilemap:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return tilemap
