require("Button")
require("core")
require("loadMap")

buttons = {}
buttons.menu = {}
buttons.settings = {}
buttons.lvlselect = {}
buttons.pause = {}
buttons.lvlcomplete = {}

-- MENU BUTTONS - LARGE
local menu_img_large = love.graphics.newImage('assets/sprites/buttons/menu-buttons-large.png')
local menu_quads_large = {}
menu_quads_large.hover = {}
generateQuads(menu_img_large, 4, menu_quads_large, 214, 106, 1)
generateQuads(menu_img_large, 4, menu_quads_large.hover, 214, 106, 2)
buttons.menu.play = Button:new("", nil, menu_img_large, menu_quads_large[1], menu_quads_large.hover[1], (GAME_WIDTH / 2) - (214 / 2), 380, 214, 106, loadMap, {1})
buttons.menu.level = Button:new("", nil, menu_img_large, menu_quads_large[2], menu_quads_large.hover[2], (GAME_WIDTH / 2) - (214 / 2), 380 + 126, 214, 106, function() GAMESTATE = 'LEVEL_SELECT' end, nil)
buttons.menu.quit = Button:new("", nil, menu_img_large, menu_quads_large[3], menu_quads_large.hover[3], (GAME_WIDTH / 2) - (214 / 2), 380 + (126 * 2), 214, 106, love.event.quit, nil)

-- MENU BUTTONS - SMALL
local menu_img_small = love.graphics.newImage('assets/sprites/buttons/menu-buttons-small.png')
local menu_quads_small = {}
menu_quads_small.hover = {}
generateQuads(menu_img_small, 4, menu_quads_small, 80, 81, 1)
generateQuads(menu_img_small, 4, menu_quads_small.hover, 80, 81, 2)
buttons.menu.github = Button:new("", nil, menu_img_small, menu_quads_small[1], menu_quads_small.hover[1], 0 + 10, 0 + 10, 80, 81, love.system.openURL, {'https://github.com/Pirrkatt'}, 0.80, 0.80)
buttons.menu.volume = Button:new("", nil, menu_img_small, menu_quads_small[2], menu_quads_small.hover[2], GAME_WIDTH - (80 + 20), GAME_HEIGHT - 100, 80, 81, volumeButton, {menu_quads_small})
buttons.menu.settings = Button:new("", nil, menu_img_small, menu_quads_small[4], menu_quads_small.hover[4], 0 + 20, GAME_HEIGHT - 100, 80, 81, function() GAMESTATE = 'SETTINGS' end, nil)

-- SETTINGS
buttons.settings.easy = Button:new("EASY", DEFAULT_FONT, nil, nil, nil, 250, 370, 80, 40, difficultyButton, {"EASY", 1}, 1, 1, {0, 1, 0}, {0.21, 0.45, 0.18})
buttons.settings.medium = Button:new("MEDIUM", DEFAULT_FONT, nil, nil, nil, 340, 370, 120, 40, difficultyButton, {"MEDIUM", 2}, 1, 1, {1, 1, 0}, {1, 0.7, 0})
buttons.settings.hard = Button:new("HARD", DEFAULT_FONT, nil, nil, nil, 470, 370, 80, 40, difficultyButton, {"HARD", 3}, 1, 1, {1, 0, 0}, {0.5, 0, 0})

-- LEVEL SELECT
local level_buttons_img = love.graphics.newImage('assets/sprites/buttons/level-buttons.png')
local level_quads = {}
level_quads.level = {}
level_quads.hover = {}
generateQuads(level_buttons_img, 3, level_quads.level, 69, 70, 1)
generateQuads(level_buttons_img, 3, level_quads.hover, 69, 70, 2)
for number in pairs(level_quads.level) do
    buttons.lvlselect[number] = Button:new("", nil, level_buttons_img, level_quads.level[number], level_quads.hover[number], 154 + ((69 + 15) * (number - 1)), 249, 60, 70, loadMap, {number})
end
buttons.lvlselect.back = Button:new("", nil, menu_img_large, menu_quads_large[4], menu_quads_large.hover[4], (GAME_WIDTH / 2) - (214 / 2), 670, 214, 106, function() GAMESTATE = 'MENU_SCREEN' end, nil)

-- GAME PAUSED
local pause_buttons_img = love.graphics.newImage('assets/sprites/buttons/pause-buttons.png')
local pause_quads = {}
pause_quads.hover = {}
generateQuads(pause_buttons_img, 3, pause_quads, 214, 105, 1)
generateQuads(pause_buttons_img, 3, pause_quads.hover, 214, 105, 2)
buttons.pause.resume = Button:new("", nil, pause_buttons_img, pause_quads[1], pause_quads.hover[1], (GAME_WIDTH / 2) - (214 / 2), 230, 214, 105, function() GAMESTATE = 'PLAYING_LEVEL' end, nil)
buttons.pause.restart = Button:new("", nil, pause_buttons_img, pause_quads[2], pause_quads.hover[2], (GAME_WIDTH / 2) - (214 / 2), 355, 214, 105, restartLevelButton, nil)
buttons.pause.menu = Button:new("", nil, pause_buttons_img, pause_quads[3], pause_quads.hover[3], (GAME_WIDTH / 2) - (214 / 2), 480, 214, 105, function() GAMESTATE = 'MENU_SCREEN' end, nil)

-- LEVEL COMPLETE
local complete_buttons_img = love.graphics.newImage('assets/sprites/buttons/level-complete-buttons.png')
local complete_quads = {}
complete_quads.hover = {}
generateQuads(complete_buttons_img, 4, complete_quads, 70, 71, 1)
generateQuads(complete_buttons_img, 4, complete_quads.hover, 70, 71, 2)
buttons.lvlcomplete.home = Button:new("", nil, complete_buttons_img, complete_quads[1], complete_quads.hover[1], 255, 604, 70, 71, function() GAMESTATE = 'MENU_SCREEN' end, nil)
buttons.lvlcomplete.lvlselect = Button:new("", nil, complete_buttons_img, complete_quads[2], complete_quads.hover[2], 255 + (73 * 1), 604, 70, 71, function() GAMESTATE = 'LEVEL_SELECT' end, nil)
buttons.lvlcomplete.restart = Button:new("", nil, complete_buttons_img, complete_quads[3], complete_quads.hover[3], 255 + (73 * 2), 604, 70, 71, restartLevelButton, nil)
buttons.lvlcomplete.nextlvl = Button:new("", nil, complete_buttons_img, complete_quads[4], complete_quads.hover[4], 255 + (73 * 3), 604, 70, 71, nextLevelButton, nil)
