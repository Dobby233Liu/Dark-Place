return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 26,
  height = 28,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 6,
  nextobjectid = 86,
  properties = {
    ["music"] = "devhotel"
  },
  tilesets = {
    {
      name = "devroom",
      firstgid = 1,
      filename = "../../tilesets/devroom.tsx",
      exportfilename = "../../tilesets/devroom.lua"
    },
    {
      name = "hoteldoors",
      firstgid = 73,
      filename = "../../tilesets/hoteldoors.tsx",
      exportfilename = "../../tilesets/hoteldoors.lua"
    },
    {
      name = "city_alleyway",
      firstgid = 76,
      filename = "../../tilesets/city_alleyway.tsx",
      exportfilename = "../../tilesets/city_alleyway.lua"
    },
    {
      name = "devroom-objects",
      firstgid = 391,
      filename = "../../tilesets/devroom-objects.tsx",
      exportfilename = "../../tilesets/devroom-objects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 26,
      height = 28,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 9, 1, 2, 2, 2, 2, 3, 25, 27, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 7, 8, 8, 8,
        8, 8, 9, 7, 1, 2, 2, 3, 9, 25, 27, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8,
        8, 8, 9, 7, 7, 8, 8, 9, 9, 25, 27, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8,
        8, 8, 9, 7, 7, 8, 8, 9, 9, 25, 27, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8,
        8, 8, 9, 4, 8, 8, 8, 8, 6, 25, 27, 4, 8, 8, 8, 8, 5, 5, 8, 8, 5, 6, 7, 8, 8, 8,
        8, 8, 9, 7, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8,
        14, 14, 15, 7, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 13, 14, 14, 14,
        8, 8, 9, 7, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8,
        8, 8, 9, 7, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8,
        5, 5, 6, 7, 8, 8, 19, 20, 20, 26, 26, 20, 20, 21, 8, 8, 8, 8, 8, 8, 8, 9, 4, 5, 5, 5,
        8, 8, 8, 8, 8, 8, 25, 26, 26, 26, 26, 26, 26, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 25, 26, 26, 26, 26, 26, 26, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 25, 26, 26, 26, 26, 26, 26, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        2, 2, 3, 7, 8, 8, 25, 26, 26, 26, 26, 26, 26, 27, 8, 8, 8, 9, 1, 2, 2, 2, 2, 2, 2, 2,
        8, 8, 9, 7, 8, 8, 31, 32, 32, 26, 26, 32, 32, 33, 8, 8, 8, 9, 7, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 9, 7, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 9, 7, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 9, 7, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 9, 13, 14, 14, 14, 14, 14, 25, 27, 14, 14, 14, 14, 14, 14, 15, 7, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 25, 27, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 26,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 40,
          width = 40,
          height = 400,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          class = "",
          shape = "rectangle",
          x = 320,
          y = 40,
          width = 40,
          height = 400,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 400,
          width = 120,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "",
          class = "",
          shape = "rectangle",
          x = 880,
          y = 400,
          width = 160,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 760,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 800,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 960,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 760,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 800,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 960,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          class = "",
          shape = "rectangle",
          x = 320,
          y = 1000,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 640,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 960,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 1000,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 400,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 400,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "objects_props",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 79,
          name = "",
          class = "",
          shape = "rectangle",
          x = 140,
          y = 440,
          width = 200,
          height = 60,
          rotation = 0,
          gid = 414,
          visible = true,
          properties = {}
        },
        {
          id = 80,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 440,
          width = 80,
          height = 120,
          rotation = 0,
          gid = 412,
          visible = true,
          properties = {}
        },
        {
          id = 81,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 440,
          width = 160,
          height = 120,
          rotation = 0,
          gid = 428,
          visible = true,
          properties = {}
        },
        {
          id = 85,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 160,
          width = 80,
          height = 120,
          rotation = 0,
          gid = 412,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 44,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 1020,
          y = 640,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "devhotel/devhotel1",
            ["marker"] = "entryright"
          }
        },
        {
          id = 47,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 320,
          y = 112,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "devhotel/devdiner/devroom",
            ["marker"] = "entry2"
          }
        },
        {
          id = 51,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 1000,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "",
          class = "",
          shape = "rectangle",
          x = 400,
          y = 1000,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 680,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 720,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 760,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 69,
          name = "",
          class = "",
          shape = "rectangle",
          x = 600,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          class = "",
          shape = "rectangle",
          x = 720,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 304,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 600,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* The breakfast buffet \nis the way! -Sci",
            ["text2"] = "* Of course, \nonly open at the start of the day... -Sci"
          }
        },
        {
          id = 77,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 640,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "",
          class = "",
          shape = "rectangle",
          x = 320,
          y = 760,
          width = 162,
          height = 78,
          rotation = 0,
          gid = 431,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 45,
          name = "entryleft",
          class = "",
          shape = "point",
          x = 980,
          y = 720,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "spawn",
          class = "",
          shape = "point",
          x = 400,
          y = 840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 82,
          name = "north",
          class = "",
          shape = "point",
          x = 400,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
