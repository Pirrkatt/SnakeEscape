require("randomFunctions")
require("loadMap")

GAME_WIDTH, GAME_HEIGHT = love.graphics.getWidth(), love.graphics.getHeight()
PLAYER_WIDTH, PLAYER_HEIGHT = 42, 42

CURRENT_DIRECTION = ""

function love.load()
    anim8 = require 'libraries/anim8'
    sti = require 'libraries/sti'
    -- love.graphics.setDefaultFilter("nearest", "nearest") -- Disable Blur on scaling

    player = {}
    player.spriteSheet = love.graphics.newImage('assets/sprites/snake-sheet.png')
    player.grid = anim8.newGrid(PLAYER_WIDTH, PLAYER_HEIGHT, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    player.animations = {}
    player.animations.down = anim8.newAnimation( player.grid('1-3', 1), 0.2 )
    player.animations.left = anim8.newAnimation( player.grid('1-3', 2), 0.2 )
    player.animations.right = anim8.newAnimation( player.grid('1-3', 3), 0.2 )
    player.animations.up = anim8.newAnimation( player.grid('1-3', 4), 0.2 )

    player.anim = player.animations.right -- Default Direction

    player.speed = 3

    GAMESTATE = 'MENU_SCREEN'

    menu_image = love.graphics.newImage('assets/sprites/mainMenuTEMPORARY.png')
    menu_width = menu_image:getWidth()
    menu_height = menu_image:getHeight()
    scaleX = GAME_WIDTH / menu_width
    scaleY = GAME_HEIGHT / menu_height
    font = love.graphics.newFont(30)
    menu_texts = {
        play = {text = "PLAY", y = 315},
        level = {text = "SELECT LEVEL", y = 375},
        quit = {text = "QUIT", y = 435}
    }

    music_track = love.audio.newSource("assets/sounds/background_music.wav", "stream")
    music_track:setVolume(0.1)
    -- music_track:setPitch(0.8)
    VOLUME_ENABLED = false
    volume_image = love.graphics.newImage('assets/sprites/volumeButtons.png')
    vol_width, vol_height = 176, 178
    vol_cord_x, vol_cord_y = 400, 600
    volume_buttons = {}
    for i = 1, 4 do
        volume_buttons[i] = love.graphics.newQuad(vol_width * (i - 1), 0, vol_width, vol_height, volume_image:getWidth(), volume_image:getHeight())
    end
    drawMainMenu()

    game_over_image = love.graphics.newImage('assets/sprites/gameOverTemporary.png')
    game_over_width = game_over_image:getWidth()
    game_over_height = game_over_image:getHeight()
    game_over_scaleX = GAME_WIDTH / game_over_width
    game_over_scaleY = GAME_HEIGHT / game_over_height
    -- local font = love.graphics.newFont(30)
    game_over_text = {
        gameOver = {text = "GAME OVER", y = 100},
        playAgain = {text = "PLAY AGAIN", y = 620},
        mainMenu = {text = "MAIN MENU", y = 720},
    }
end

local mousePos = nil
local timer = 0

function love.update(dt)
    if (VOLUME_ENABLED) then
        if not music_track:isPlaying( ) then
            love.audio.play(music_track)
        end
    else
        love.audio.stop()
    end
    -- timer = timer + dt
    -- if timer >= 1 then
    --     print(player.x .. " " .. player.y)
        -- if mousePos ~= love.mouse.getPosition() then
        --     print(love.mouse.getPosition())
        --     mousePos = love.mouse.getPosition()
        -- end
    --     timer = 0
    -- end

    if (GAMESTATE == 'MENU_SCREEN') then
        hoverTextCursor(menu_texts)
    end

    if (GAMESTATE == 'PLAYING_LEVEL') then
        if CURRENT_DIRECTION ~= "" then
            checkCollision(CURRENT_DIRECTION)
            checkFinish()
            playerMove(CURRENT_DIRECTION)
        else
            player.anim:gotoFrame(2)
        end
        sendKeyboardInputs()
    end
    player.anim:update(dt)
end

function love.draw()
    if (GAMESTATE == 'LEVEL_FINISHED') then -- show gz message, wait 5 seconds, start next level if exists in maps folder
        gameMap:draw(0, 0, scaleX, scaleY)
        sendBalloons()
        -- love.graphics.setColor(0, 0, 0, 100)
        -- love.graphics.rectangle('fill', 0,0, GAME_WIDTH, GAME_HEIGHT)
        -- love.graphics.setColor(255,255,255)
        love.graphics.printf('WELL DONE!', 0, GAME_HEIGHT/2, GAME_WIDTH, 'center', 0, 1.2, 1.2)
    end
    if (GAMESTATE == 'PLAYING_LEVEL') then
        gameMap:draw(0, 0, scaleX, scaleY)
        player.anim:draw(player.spriteSheet, player.x, player.y, 0, 1, 1, PLAYER_WIDTH / 2, PLAYER_HEIGHT / 2)
    elseif (GAMESTATE == 'MENU_SCREEN') then
        drawMainMenu()
    elseif (GAMESTATE == 'GAME_OVER') then -- show fail screen, try again/mainmenu buttons (with currentLevel)
        drawGameOver()
    end
end

function love.mousepressed(x, y, button, istouch)
    if (GAMESTATE == 'MENU_SCREEN') then
        if button == 1 then
            menuButtons(x, y, button)
            love.mouse.setCursor()
        end
    end
end

-- timePassed = 0
-- timeToPass = 10
-- function love.update(dt)
--  timePassed = timePassed + 1 * dt

--  if timePassed > timeToPass then
--   timePassed = 0
--   -- do something here
-- end