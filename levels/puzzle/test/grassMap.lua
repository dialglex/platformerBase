return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 17,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "grass",
      firstgid = 1,
      filename = "grass.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../Images/Tiles/grass.png",
      imagewidth = 80,
      imageheight = 80,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 25,
      tiles = {}
    },
    {
      name = "stoneBrick",
      firstgid = 26,
      filename = "stoneBrick.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../images/tiles/stoneBrick.png",
      imagewidth = 64,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 16,
      tiles = {}
    },
    {
      name = "diamond",
      firstgid = 42,
      filename = "diamond.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../images/terrainItems/diamond.png",
      imagewidth = 32,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 400
            },
            {
              tileid = 1,
              duration = 300
            }
          }
        },
        {
          id = 1,
          animation = {
            {
              tileid = 1,
              duration = 0
            },
            {
              tileid = 0,
              duration = 0
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "grass",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 21, 21, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 22, 0, 17, 18, 18, 19, 0, 22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 22, 0, 0, 0, 0, 0, 0, 22, 7, 4, 0, 0, 0, 0, 0, 0, 2, 9, 22, 0, 0, 0, 0, 0, 0, 22, 0, 0,
        0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 24, 0, 0, 0, 0, 0, 0, 0, 0, 23, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0,
        0, 0, 0, 0, 22, 21, 21, 21, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 21, 21, 21, 22, 0, 0, 0, 0,
        0, 0, 0, 0, 2, 3, 3, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 3, 3, 4, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 21, 21, 21, 21, 21, 21, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0,
        0, 6, 0, 0, 0, 0, 0, 0, 22, 21, 21, 12, 13, 13, 18, 18, 13, 13, 14, 21, 21, 22, 0, 0, 0, 0, 0, 0, 6, 0,
        0, 11, 0, 0, 22, 0, 0, 0, 7, 8, 8, 5, 13, 19, 0, 0, 17, 13, 10, 8, 8, 9, 0, 0, 0, 22, 0, 0, 11, 0,
        0, 11, 0, 0, 6, 22, 0, 0, 12, 13, 13, 13, 14, 0, 0, 0, 0, 12, 13, 13, 13, 14, 0, 0, 22, 6, 0, 0, 11, 0,
        0, 11, 0, 0, 12, 9, 0, 0, 12, 13, 13, 13, 14, 22, 0, 0, 22, 12, 13, 13, 13, 14, 0, 0, 7, 25, 0, 0, 11, 0,
        21, 11, 21, 21, 12, 14, 21, 21, 12, 13, 13, 13, 10, 9, 21, 21, 7, 5, 13, 13, 13, 14, 21, 21, 12, 14, 21, 21, 11, 21,
        8, 15, 8, 8, 5, 10, 8, 8, 5, 13, 13, 13, 13, 10, 8, 8, 5, 13, 13, 13, 13, 10, 8, 8, 5, 10, 8, 8, 15, 8
      }
    },
    {
      type = "tilelayer",
      name = "diamond",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}