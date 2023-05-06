GAME_WIDTH = love.graphics.getWidth()
GAME_HEIGHT = love.graphics.getHeight()

MAP_SIZE = 480 -- 480 x 480

SCALE_X = GAME_WIDTH / MAP_SIZE -- Used to scale levels and assets to fit game screen
SCALE_Y = GAME_HEIGHT / MAP_SIZE

PLAYER_WIDTH = 42
PLAYER_HEIGHT = 42

CURRENT_DIRECTION = ""

GAMESTATE = 'MENU_SCREEN'

-- MOUSE_HOVERING = false

VOLUME_ENABLED = false -- Change to true so the button generates correct quads (or change button table to start with 3 & 4)

DEFAULT_FONT = love.graphics.newFont('assets/fonts/RussoOne-Regular.ttf', 22)

DIFFICULTY = 'MEDIUM'

COMPLETION_TIME = 0
COIN_EARNED = false

-- TABLES
TIMED_EVENTS = {}
STARS_EARNED = {}
for i = 1, 3 do
    STARS_EARNED[i] = false
end