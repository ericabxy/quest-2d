return {
  texture = love.graphics.newImage('share/characters.png'),
  base = {
    down = {
      love.graphics.newQuad(0, 0, 16, 16, 192, 128),
      love.graphics.newQuad(16, 0, 16, 16, 192, 128),
      love.graphics.newQuad(32, 0, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(0, 16, 16, 16, 192, 128),
      love.graphics.newQuad(16, 16, 16, 16, 192, 128),
      love.graphics.newQuad(32, 16, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(0, 32, 16, 16, 192, 128),
      love.graphics.newQuad(16, 32, 16, 16, 192, 128),
      love.graphics.newQuad(32, 32, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(0, 48, 16, 16, 192, 128),
      love.graphics.newQuad(16, 48, 16, 16, 192, 128),
      love.graphics.newQuad(32, 48, 16, 16, 192, 128)
    },
  },
  boy = {
    down = {
      love.graphics.newQuad(48, 0, 16, 16, 192, 128),
      love.graphics.newQuad(64, 0, 16, 16, 192, 128),
      love.graphics.newQuad(80, 0, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(48, 16, 16, 16, 192, 128),
      love.graphics.newQuad(64, 16, 16, 16, 192, 128),
      love.graphics.newQuad(80, 16, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(48, 32, 16, 16, 192, 128),
      love.graphics.newQuad(64, 32, 16, 16, 192, 128),
      love.graphics.newQuad(80, 32, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(48, 48, 16, 16, 192, 128),
      love.graphics.newQuad(64, 48, 16, 16, 192, 128),
      love.graphics.newQuad(80, 48, 16, 16, 192, 128)
    },
  },
  girl = {
    down = {
      love.graphics.newQuad(96, 0, 16, 16, 192, 128),
      love.graphics.newQuad(112, 0, 16, 16, 192, 128),
      love.graphics.newQuad(128, 0, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(96, 16, 16, 16, 192, 128),
      love.graphics.newQuad(112, 16, 16, 16, 192, 128),
      love.graphics.newQuad(128, 16, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(96, 32, 16, 16, 192, 128),
      love.graphics.newQuad(112, 32, 16, 16, 192, 128),
      love.graphics.newQuad(128, 32, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(96, 48, 16, 16, 192, 128),
      love.graphics.newQuad(112, 48, 16, 16, 192, 128),
      love.graphics.newQuad(128, 48, 16, 16, 192, 128)
    },
  },
  skeleton = {
    down = {
      love.graphics.newQuad(144, 0, 16, 16, 192, 128),
      love.graphics.newQuad(160, 0, 16, 16, 192, 128),
      love.graphics.newQuad(176, 0, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(144, 16, 16, 16, 192, 128),
      love.graphics.newQuad(160, 16, 16, 16, 192, 128),
      love.graphics.newQuad(176, 16, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(144, 32, 16, 16, 192, 128),
      love.graphics.newQuad(160, 32, 16, 16, 192, 128),
      love.graphics.newQuad(176, 32, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(144, 48, 16, 16, 192, 128),
      love.graphics.newQuad(160, 48, 16, 16, 192, 128),
      love.graphics.newQuad(176, 48, 16, 16, 192, 128)
    },
  },
  slime = {
    down = {
      love.graphics.newQuad(0, 64, 16, 16, 192, 128),
      love.graphics.newQuad(16, 64, 16, 16, 192, 128),
      love.graphics.newQuad(32, 64, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(0, 80, 16, 16, 192, 128),
      love.graphics.newQuad(16, 80, 16, 16, 192, 128),
      love.graphics.newQuad(32, 80, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(0, 96, 16, 16, 192, 128),
      love.graphics.newQuad(16, 96, 16, 16, 192, 128),
      love.graphics.newQuad(32, 96, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(0, 112, 16, 16, 192, 128),
      love.graphics.newQuad(16, 112, 16, 16, 192, 128),
      love.graphics.newQuad(32, 112, 16, 16, 192, 128)
    },
  },
  bat = {
    down = {
      love.graphics.newQuad(48, 64, 16, 16, 192, 128),
      love.graphics.newQuad(64, 64, 16, 16, 192, 128),
      love.graphics.newQuad(80, 64, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(48, 80, 16, 16, 192, 128),
      love.graphics.newQuad(64, 80, 16, 16, 192, 128),
      love.graphics.newQuad(80, 80, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(48, 96, 16, 16, 192, 128),
      love.graphics.newQuad(64, 96, 16, 16, 192, 128),
      love.graphics.newQuad(80, 96, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(48, 112, 16, 16, 192, 128),
      love.graphics.newQuad(64, 112, 16, 16, 192, 128),
      love.graphics.newQuad(80, 112, 16, 16, 192, 128)
    },
  },
  ghost = {
    down = {
      love.graphics.newQuad(96, 64, 16, 16, 192, 128),
      love.graphics.newQuad(112, 64, 16, 16, 192, 128),
      love.graphics.newQuad(128, 64, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(96, 80, 16, 16, 192, 128),
      love.graphics.newQuad(112, 80, 16, 16, 192, 128),
      love.graphics.newQuad(128, 80, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(96, 96, 16, 16, 192, 128),
      love.graphics.newQuad(112, 96, 16, 16, 192, 128),
      love.graphics.newQuad(128, 96, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(96, 112, 16, 16, 192, 128),
      love.graphics.newQuad(112, 112, 16, 16, 192, 128),
      love.graphics.newQuad(128, 112, 16, 16, 192, 128)
    },
  },
  spider = {
    down = {
      love.graphics.newQuad(144, 64, 16, 16, 192, 128),
      love.graphics.newQuad(160, 64, 16, 16, 192, 128),
      love.graphics.newQuad(176, 64, 16, 16, 192, 128)
    },
    left = {
      love.graphics.newQuad(144, 80, 16, 16, 192, 128),
      love.graphics.newQuad(160, 80, 16, 16, 192, 128),
      love.graphics.newQuad(176, 80, 16, 16, 192, 128)
    },
    right = {
      love.graphics.newQuad(144, 96, 16, 16, 192, 128),
      love.graphics.newQuad(160, 96, 16, 16, 192, 128),
      love.graphics.newQuad(176, 96, 16, 16, 192, 128)
    },
    up = {
      love.graphics.newQuad(144, 112, 16, 16, 192, 128),
      love.graphics.newQuad(160, 112, 16, 16, 192, 128),
      love.graphics.newQuad(176, 112, 16, 16, 192, 128)
    },
  }
}
