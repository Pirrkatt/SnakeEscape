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
  nextlayerid = 13,
  nextobjectid = 22,
  properties = {},
  tilesets = {
    {
      name = "mainMenu",
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
      name = "ground",
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
        193, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 195, 196,
        243, 244, 220, 244, 245, 220, 219, 219, 244, 219, 219, 220, 219, 245, 220, 245, 220, 244, 244, 244, 245, 245, 220, 245, 244, 219, 220, 220, 244, 246,
        243, 245, 220, 244, 244, 244, 244, 245, 245, 219, 220, 245, 220, 220, 219, 244, 220, 245, 244, 244, 220, 244, 219, 245, 220, 220, 245, 219, 244, 246,
        243, 245, 220, 244, 219, 245, 244, 245, 219, 245, 219, 244, 220, 219, 244, 244, 244, 245, 244, 245, 244, 220, 244, 220, 219, 220, 245, 244, 244, 246,
        243, 220, 244, 220, 219, 245, 244, 219, 244, 220, 244, 220, 220, 220, 244, 244, 244, 244, 245, 245, 245, 219, 220, 244, 244, 219, 220, 245, 220, 246,
        243, 244, 244, 244, 219, 244, 245, 244, 219, 219, 244, 220, 219, 244, 245, 244, 244, 219, 219, 244, 245, 245, 244, 245, 219, 244, 245, 244, 219, 246,
        243, 220, 245, 244, 245, 244, 244, 244, 219, 220, 244, 244, 244, 220, 244, 244, 244, 220, 244, 244, 245, 219, 220, 244, 244, 245, 220, 244, 245, 246,
        243, 245, 245, 244, 244, 244, 219, 244, 220, 244, 244, 244, 244, 244, 245, 220, 244, 244, 244, 244, 220, 220, 220, 244, 219, 245, 220, 244, 220, 246,
        243, 219, 244, 219, 244, 244, 220, 219, 245, 244, 220, 220, 244, 244, 220, 244, 245, 220, 244, 244, 220, 244, 244, 219, 244, 244, 219, 220, 245, 246,
        243, 219, 244, 245, 245, 244, 220, 220, 219, 244, 244, 220, 244, 245, 245, 244, 219, 219, 219, 244, 244, 244, 244, 219, 244, 220, 220, 244, 220, 246,
        243, 219, 244, 219, 244, 219, 244, 244, 244, 244, 244, 219, 245, 220, 244, 244, 244, 219, 219, 244, 220, 244, 220, 220, 220, 219, 219, 245, 219, 246,
        243, 219, 244, 244, 244, 244, 220, 244, 219, 219, 219, 244, 244, 220, 244, 244, 244, 219, 244, 219, 244, 244, 220, 245, 244, 220, 244, 220, 219, 246,
        243, 220, 244, 244, 245, 244, 244, 219, 219, 220, 244, 244, 244, 219, 219, 244, 244, 244, 219, 219, 244, 244, 244, 244, 244, 244, 244, 219, 220, 246,
        243, 245, 244, 219, 220, 220, 220, 219, 244, 219, 244, 244, 245, 244, 244, 244, 244, 244, 219, 219, 244, 244, 220, 244, 244, 244, 244, 219, 245, 246,
        243, 220, 245, 245, 219, 220, 245, 220, 219, 244, 220, 245, 244, 244, 244, 219, 244, 244, 220, 220, 245, 244, 244, 219, 220, 220, 219, 244, 219, 246,
        243, 220, 244, 219, 245, 219, 220, 244, 245, 245, 219, 219, 245, 244, 244, 244, 244, 244, 245, 245, 244, 244, 244, 245, 244, 244, 244, 219, 220, 246,
        243, 244, 220, 244, 244, 244, 245, 219, 219, 244, 244, 244, 244, 244, 245, 244, 244, 244, 219, 244, 220, 244, 245, 244, 245, 245, 220, 220, 245, 246,
        243, 245, 244, 244, 244, 244, 220, 219, 220, 244, 244, 244, 244, 219, 245, 244, 219, 245, 245, 244, 244, 244, 92, 92, 92, 92, 92, 92, 92, 246,
        243, 220, 245, 244, 244, 244, 220, 244, 245, 244, 244, 219, 244, 245, 220, 244, 220, 219, 245, 244, 244, 245, 244, 220, 245, 220, 219, 219, 220, 246,
        243, 220, 245, 244, 244, 245, 245, 244, 244, 244, 219, 244, 244, 244, 244, 220, 244, 244, 219, 245, 220, 244, 244, 244, 245, 245, 244, 245, 245, 246,
        243, 244, 244, 244, 219, 245, 244, 244, 244, 244, 244, 219, 244, 220, 244, 244, 244, 244, 244, 244, 219, 220, 220, 244, 244, 245, 244, 219, 244, 246,
        243, 244, 245, 219, 219, 244, 244, 245, 244, 219, 244, 219, 245, 219, 219, 244, 244, 244, 245, 244, 244, 220, 220, 244, 278, 219, 244, 244, 219, 246,
        243, 244, 245, 219, 245, 244, 244, 244, 244, 219, 244, 245, 244, 244, 244, 244, 244, 244, 244, 244, 245, 245, 244, 244, 244, 219, 219, 220, 244, 246,
        243, 244, 244, 219, 219, 244, 244, 244, 219, 244, 220, 244, 244, 244, 244, 244, 244, 244, 245, 244, 220, 219, 244, 220, 244, 244, 219, 244, 244, 246,
        243, 245, 244, 245, 219, 244, 244, 244, 244, 245, 244, 244, 244, 244, 244, 244, 244, 219, 244, 244, 245, 219, 244, 220, 219, 244, 219, 244, 244, 246,
        243, 244, 244, 219, 219, 244, 219, 219, 219, 244, 244, 245, 244, 244, 244, 244, 244, 245, 219, 244, 244, 244, 244, 220, 219, 244, 244, 244, 244, 246,
        243, 244, 245, 220, 219, 245, 244, 244, 244, 244, 244, 244, 219, 219, 219, 244, 245, 244, 244, 244, 244, 244, 244, 245, 244, 244, 244, 244, 244, 246,
        243, 219, 245, 220, 245, 245, 244, 245, 245, 245, 244, 245, 220, 244, 220, 220, 220, 245, 219, 245, 219, 244, 244, 220, 244, 244, 244, 244, 244, 246,
        243, 220, 244, 220, 244, 244, 245, 245, 244, 219, 244, 245, 219, 219, 244, 244, 245, 219, 244, 244, 219, 244, 244, 244, 244, 244, 244, 244, 244, 246,
        268, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 92, 92, 271
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 2,
      name = "details",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 196, 248, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 246, 248, 243, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 30, 31, 32, 0,
        0, 0, 46, 47, 48, 49, 0, 0, 0, 0, 0, 0, 246, 248, 243, 0, 0, 0, 0, 0, 0, 0, 0, 52, 53, 54, 55, 56, 57, 0,
        0, 0, 71, 72, 73, 74, 0, 0, 0, 0, 0, 0, 246, 248, 243, 0, 0, 304, 0, 0, 0, 0, 0, 77, 78, 79, 80, 81, 82, 0,
        0, 0, 96, 97, 98, 99, 0, 0, 0, 0, 0, 0, 246, 248, 243, 0, 0, 0, 0, 0, 0, 0, 0, 102, 103, 104, 105, 106, 107, 0,
        0, 0, 121, 122, 123, 124, 304, 197, 270, 270, 270, 270, 271, 248, 243, 0, 0, 0, 0, 0, 0, 0, 0, 127, 128, 129, 130, 131, 132, 0,
        0, 0, 146, 147, 148, 149, 197, 273, 195, 195, 195, 195, 195, 195, 223, 0, 92, 92, 92, 92, 92, 92, 0, 152, 289, 246, 243, 304, 157, 0,
        268, 270, 270, 270, 270, 270, 273, 223, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 92, 0, 0, 0, 0, 0, 0, 246, 243, 0, 0, 0,
        193, 195, 195, 195, 195, 195, 223, 0, 245, 244, 245, 244, 245, 245, 244, 245, 245, 244, 244, 244, 245, 244, 304, 0, 0, 246, 268, 270, 270, 271,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 0, 222, 195, 195, 195, 196,
        92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 0, 0, 0, 0, 0, 304, 0, 245, 0, 0, 46, 47, 48, 49, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 71, 72, 73, 74, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 96, 97, 98, 99, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 121, 122, 123, 124, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 146, 147, 148, 149, 0, 0,
        0, 0, 59, 60, 61, 62, 0, 0, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 302, 0, 0, 0, 0, 0,
        0, 0, 84, 85, 86, 87, 0, 0, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 109, 110, 111, 112, 0, 0, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 303, 0, 244, 92, 92, 92, 92, 92, 92, 92, 0,
        0, 0, 134, 135, 136, 137, 0, 0, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 159, 246, 243, 187, 0, 0, 245, 245, 245, 0, 244, 245, 245, 244, 244, 245, 244, 244, 244, 244, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 246, 243, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 246, 268, 269, 269, 269, 269, 269, 198, 0, 0, 0, 0, 0, 0, 0, 0, 64, 65, 66, 67, 68, 69, 278, 0, 0, 0, 0,
        0, 0, 0, 222, 195, 195, 195, 195, 195, 196, 243, 0, 0, 0, 0, 0, 0, 0, 0, 89, 90, 91, 92, 93, 94, 0, 0, 0, 0, 0,
        0, 0, 0, 46, 47, 48, 49, 0, 0, 246, 243, 0, 0, 0, 303, 0, 0, 0, 0, 114, 115, 116, 117, 118, 119, 0, 0, 0, 0, 0,
        0, 0, 0, 71, 72, 73, 74, 0, 0, 246, 243, 0, 0, 0, 92, 92, 0, 0, 0, 139, 140, 141, 142, 143, 144, 0, 0, 0, 0, 0,
        0, 0, 0, 96, 97, 98, 99, 0, 0, 246, 243, 0, 0, 0, 0, 0, 0, 0, 305, 164, 2684354841, 256, 256, 1610613017, 169, 0, 0, 0, 0, 0,
        0, 0, 0, 121, 122, 123, 124, 0, 0, 246, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354841, 256, 256, 1610613017, 0, 303, 0, 0, 0, 0,
        0, 0, 0, 146, 147, 148, 149, 0, 0, 246, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354841, 256, 256, 1610613017, 0, 0, 0, 0, 0, 0,
        0, 0, 302, 0, 0, 0, 0, 0, 0, 246, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354841, 256, 256, 1610613017, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 271, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354841, 256, 256, 1610613017, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 4,
      name = "level",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 177, 184, 184, 184, 184, 184, 184, 185, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, 279, 279, 279, 279, 279, 279, 210, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, 231, 231, 231, 231, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, 231, 231, 177, 185, 231, 231, 210, 0, 0, 0, 0, 0, 0, 0,
        181, 181, 181, 181, 181, 181, 181, 181, 181, 181, 181, 181, 181, 181, 185, 227, 231, 231, 235, 210, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0,
        279, 279, 279, 279, 279, 279, 279, 279, 279, 279, 279, 279, 279, 279, 235, 227, 231, 231, 235, 210, 231, 231, 210, 0, 0, 0, 0, 0, 0, 0,
        231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0,
        231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 210, 0, 0, 0, 0, 0, 0, 0,
        258, 258, 258, 258, 258, 258, 258, 258, 258, 258, 258, 185, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0,
        283, 283, 283, 283, 283, 283, 283, 283, 283, 283, 283, 210, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 210, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 252, 184, 184, 184, 184, 184, 184, 185,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 279, 279, 279, 279, 279, 279, 279, 210,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 231, 231, 231, 231, 231, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 210, 231, 231, 231, 231, 231, 231, 231, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 252, 253, 253, 253, 253, 253, 253, 185, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235, 227, 231, 231, 235, 0, 0, 0, 0, 303, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 252, 260, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 279, 279, 231, 231, 235, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 231, 231, 231, 231, 235, 0, 0, 0, 0, 288, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 258, 258, 258, 258, 258, 258, 260, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 277, 283, 283, 283, 283, 283, 283, 285, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 231, 231, 235,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 92, 92, 235
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 6,
      name = "finish",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354882, 2684354882, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 12,
      name = "Rutlager 5",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 92, 92, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 92, 92, 92, 92, 92, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 92, 92, 92, 92, 92, 92, 92, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0, 0, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 92, 92, 92, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 92, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
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
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 144,
          width = 240,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 160,
          width = 32,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 208,
          width = 192,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 224,
          width = 16,
          height = 208,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 416,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 128,
          width = 16,
          height = 288,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 128,
          width = 16,
          height = 208,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 320,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 336,
          width = 16,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 464,
          y = 256,
          width = 16,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 256,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 80,
          width = 16,
          height = 176,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 80,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 96,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
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
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 480,
          width = 32,
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
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 304,
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
      id = 10,
      name = "startPosition",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["Direction"] = "right"
      },
      objects = {
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 176,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
