local tile = require('src.tile')

local tilemap = {
  texture = false,  -- Must be initialized with a texture in order to work.
  quads = false,  -- Must be initialized.
  width = 20,
  height = 15,
  map = {},
  tiles = {}
}

function tilemap:draw(xoffset, yoffset)
  xoffset, yoffset = xoffset or 0, yoffset or 0
  for column_i, column in ipairs(self.map) do
    for row_i, t in ipairs(column) do
      local x, y = (column_i - 1) * t.width, (row_i - 1) * t.height
      love.graphics.draw(t.texture, t.quad, x - xoffset, y - yoffset)
    end
  end
end

function tilemap:get_tile_at(x, y)
  x, y = math.floor(x), math.floor(y)
  if self.map[x] and self.map[x][y] then return self.map[x][y] end
end

function tilemap:is_solid_at(x, y)
  x, y = math.floor(x), math.floor(y)
  if self.map[x] and self.map[x][y] then return self.map[x][y].solid end
  return true
end

function tilemap:load_string(s)
  self.width = #(s:match("[^\n]+"))
  self.height = 0
  self.map = {}
  for x = 1, self.width, 1 do self.map[x] = {} end  
  local row_i, col_i = 1, 1
  for row in s:gmatch("[^\n]+") do
    assert(#row == self.width,
      'Map is not aligned: width of row ' .. tostring(row_i) ..
      ' should be ' .. tostring(self.width) ..
      ', but it is ' .. tostring(#row)
    )
    col_i = 1
    for tile_number in row:gmatch(".") do
      local t = self.tiles['.']:new()
      if self.tiles[tile_number] then t = self.tiles[tile_number]:new() end
      self.map[col_i][row_i] = t
      col_i = col_i + 1
    end
    self.height = self.height + 1
    row_i = row_i + 1
  end
end

-- Constructor.
function tilemap:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return tilemap
