return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 30,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 15,
  nextobjectid = 80,
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 25,
      image = "../sprites/tiles.png",
      imagewidth = 400,
      imageheight = 224,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
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
      wangsets = {},
      tilecount = 350,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 1,
      name = "Ground",
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
        219, 245, 245, 244, 244, 244, 244, 244, 245, 245, 244, 244, 244, 245, 244, 244, 244, 245, 244, 244, 244, 244, 244, 244, 244, 244, 244, 245, 244, 244,
        244, 244, 245, 244, 244, 245, 245, 244, 245, 244, 244, 245, 245, 244, 244, 245, 244, 244, 244, 245, 245, 244, 245, 245, 245, 244, 244, 244, 245, 245,
        244, 244, 245, 244, 245, 245, 244, 244, 244, 244, 244, 244, 244, 245, 245, 245, 244, 245, 245, 245, 244, 244, 244, 244, 244, 244, 245, 245, 244, 244,
        244, 244, 244, 244, 244, 245, 245, 245, 245, 244, 245, 244, 245, 244, 245, 244, 245, 245, 244, 244, 244, 245, 245, 245, 245, 245, 244, 244, 245, 244,
        245, 244, 244, 244, 245, 244, 244, 244, 244, 244, 244, 245, 245, 244, 244, 246, 218, 244, 245, 244, 245, 245, 245, 245, 244, 244, 245, 245, 245, 245,
        244, 244, 246, 268, 198, 245, 245, 245, 244, 246, 268, 198, 245, 244, 245, 246, 218, 245, 245, 245, 245, 245, 244, 244, 245, 245, 245, 244, 245, 245,
        244, 244, 246, 248, 268, 269, 269, 269, 269, 271, 248, 268, 270, 270, 270, 271, 218, 245, 244, 245, 244, 244, 245, 244, 244, 244, 244, 244, 245, 244,
        244, 244, 246, 248, 193, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 223, 244, 244, 244, 244, 245, 244, 245, 244, 245, 245, 245, 244, 245,
        244, 245, 246, 248, 243, 244, 244, 245, 244, 244, 245, 245, 244, 245, 244, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244, 245, 244, 244, 245,
        244, 244, 246, 248, 243, 245, 244, 245, 244, 244, 245, 244, 245, 244, 244, 244, 244, 245, 244, 245, 244, 245, 244, 244, 244, 244, 245, 245, 244, 244,
        244, 245, 246, 248, 243, 245, 244, 244, 244, 245, 245, 245, 244, 244, 244, 244, 245, 244, 245, 244, 244, 244, 244, 245, 244, 245, 244, 244, 244, 244,
        269, 269, 271, 248, 243, 244, 245, 245, 244, 244, 245, 244, 244, 244, 244, 244, 245, 244, 245, 245, 244, 245, 245, 244, 244, 245, 245, 244, 244, 244,
        248, 248, 248, 248, 243, 245, 245, 244, 245, 244, 245, 245, 245, 244, 244, 244, 245, 245, 244, 245, 244, 244, 244, 245, 244, 244, 244, 244, 245, 244,
        195, 195, 195, 194, 223, 245, 244, 245, 244, 245, 244, 245, 244, 245, 244, 244, 245, 245, 244, 244, 245, 244, 244, 244, 245, 244, 245, 244, 245, 245,
        244, 244, 245, 244, 245, 245, 245, 244, 245, 244, 245, 244, 244, 244, 244, 244, 244, 245, 244, 244, 245, 244, 245, 245, 245, 244, 244, 245, 244, 244,
        244, 245, 244, 244, 244, 245, 245, 244, 244, 244, 244, 244, 244, 245, 244, 245, 245, 244, 245, 244, 245, 244, 245, 244, 244, 245, 244, 220, 244, 244,
        244, 244, 245, 245, 245, 244, 244, 244, 244, 245, 244, 244, 244, 244, 244, 244, 245, 245, 244, 245, 244, 244, 244, 244, 244, 245, 244, 244, 245, 245,
        244, 245, 245, 244, 244, 244, 244, 245, 244, 245, 244, 245, 245, 245, 244, 245, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244, 245, 244, 244,
        245, 245, 244, 244, 244, 244, 245, 244, 244, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244, 245, 244, 245, 244, 245, 244, 244, 244, 244, 244,
        245, 244, 244, 244, 245, 245, 245, 244, 244, 244, 244, 244, 244, 245, 244, 244, 245, 244, 244, 244, 245, 244, 244, 244, 244, 244, 245, 245, 245, 244,
        244, 245, 244, 245, 245, 220, 244, 244, 244, 245, 245, 245, 244, 244, 245, 244, 244, 245, 244, 245, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244,
        244, 245, 245, 244, 244, 244, 244, 245, 244, 245, 244, 244, 244, 244, 244, 244, 245, 245, 244, 244, 244, 244, 244, 244, 244, 244, 244, 220, 245, 244,
        244, 244, 244, 244, 244, 244, 244, 244, 245, 245, 245, 244, 245, 244, 245, 245, 245, 244, 245, 244, 244, 244, 244, 219, 244, 244, 245, 244, 244, 245,
        244, 244, 220, 244, 245, 244, 245, 244, 245, 244, 244, 244, 245, 244, 244, 244, 245, 245, 244, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244,
        244, 244, 244, 244, 245, 244, 244, 244, 245, 244, 244, 244, 244, 245, 245, 245, 245, 244, 244, 245, 244, 245, 245, 244, 245, 244, 244, 244, 244, 244,
        244, 244, 245, 244, 244, 244, 244, 245, 245, 244, 245, 245, 244, 245, 245, 245, 244, 244, 244, 244, 244, 245, 245, 244, 245, 244, 244, 244, 245, 244,
        244, 245, 245, 244, 244, 244, 245, 244, 245, 245, 244, 245, 245, 244, 244, 244, 244, 244, 245, 245, 244, 244, 244, 244, 244, 244, 245, 244, 245, 245,
        244, 244, 244, 244, 220, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 245, 244, 245, 245, 245, 244, 244, 245, 244, 244, 245, 244, 244, 245, 245,
        244, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244, 244, 245, 245, 244, 244, 244, 244, 245, 244, 245,
        244, 244, 244, 244, 244, 244, 245, 244, 245, 245, 244, 244, 244, 245, 245, 244, 244, 244, 244, 244, 245, 245, 244, 244, 245, 245, 244, 244, 244, 244
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 14,
      name = "levelGround",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 293, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 92, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 295, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 319, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 293, 66, 66, 66, 66, 66, 92, 92, 295, 320, 320, 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 1610613031, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 69, 0, 0,
        0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 89, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 318, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 320, 2684354855, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 94, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 92, 94, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 4,
      name = "Walls",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 241, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 3221225762, 3221225762, 3221225762, 3221225762, 0, 0, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 290, 290, 290, 290, 0, 0, 0, 0, 0, 0, 214, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 189, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 241, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 189, 240, 240, 240, 240, 240, 241, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189, 240, 240, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 239, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 191, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 1610613026, 2684354850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 239, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 240, 191, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 216, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216, 2684354907, 2684354882, 2684354857, 216, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 2,
      name = "bigDecorations",
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
        27, 28, 29, 30, 31, 32, 302, 27, 28, 29, 30, 31, 32, 0, 59, 60, 61, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        52, 53, 54, 55, 56, 57, 0, 52, 53, 54, 55, 56, 57, 0, 84, 85, 86, 87, 0, 0, 305, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        77, 78, 79, 80, 81, 82, 0, 77, 78, 79, 80, 81, 82, 0, 109, 110, 111, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        102, 103, 104, 105, 106, 107, 0, 102, 103, 104, 105, 106, 107, 0, 134, 135, 136, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        127, 128, 129, 130, 131, 132, 0, 127, 128, 129, 130, 131, 132, 0, 187, 160, 161, 287, 0, 46, 47, 48, 49, 0, 0, 0, 0, 0, 0, 0,
        304, 289, 154, 155, 156, 157, 0, 152, 289, 154, 155, 156, 157, 0, 212, 0, 0, 0, 0, 71, 72, 73, 74, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 97, 98, 99, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 122, 123, 124, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 146, 147, 148, 149, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 305,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 47, 48, 49, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 305, 0, 0, 0, 0, 0, 0, 0, 0, 71, 72, 73, 74, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 97, 98, 99, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 122, 123, 124, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 146, 147, 148, 149, 303, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 47, 48, 49, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 72, 73, 74, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 97, 98, 99, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 122, 123, 124, 0, 0, 0, 0, 0, 302,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 146, 147, 148, 149, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 305, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "startPosition",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["Direction"] = "down"
      },
      objects = {
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 0,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["Direction"] = "down"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 12,
      name = "goldCoin",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 336,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "finishLine",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 480,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "wallCollisions",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 0,
          width = 16,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 62,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 0,
          width = 16,
          height = 256,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 240,
          width = 176,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 64,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 256,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 304,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 320,
          width = 192,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 336,
          width = 16,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 400,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 400,
          width = 320,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 272,
          width = 16,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 272,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 144,
          width = 16,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 144,
          width = 192,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 160,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 208,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 336,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}