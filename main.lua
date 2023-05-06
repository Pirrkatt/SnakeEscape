require 'global'
require 'core'
require 'utilities'
require 'buttonSetup'
require 'loadMap'
require 'libraries/simple-slider'

function love.load()
    anim8 = require 'libraries/anim8'
    sti = require 'libraries/sti'
    love.graphics.setDefaultFilter("nearest", "nearest") -- Disable Blur on scaling

    -- PLAYER
    player = {}
    player.spriteSheet = love.graphics.newImage('assets/sprites/snake-sheet.png')
    player.grid = anim8.newGrid(PLAYER_WIDTH, PLAYER_HEIGHT, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    player.animations = {}
    player.animations.down = anim8.newAnimation( player.grid('1-3', 1), 0.2 )
    player.animations.left = anim8.newAnimation( player.grid('1-3', 2), 0.2 )
    player.animations.right = anim8.newAnimation( player.grid('1-3', 3), 0.2 )
    player.animations.up = anim8.newAnimation( player.grid('1-3', 4), 0.2 )
    player.animations.down.dead = anim8.newAnimation( player.grid('4-4', 1), 0.2 )
    player.animations.left.dead = anim8.newAnimation( player.grid('4-4', 2), 0.2 )
    player.animations.right.dead = anim8.newAnimation( player.grid('4-4', 3), 0.2 )
    player.animations.up.dead = anim8.newAnimation( player.grid('4-4', 4), 0.2 )

    -- player.anim = player.animations.right -- Default Direction
    -- player.deadframe = player.anim.dead

    player.speed = 2 -- Default speed = 2 (Medium Difficulty)

    balloons = {} -- Holds all balloon objects (from core.lua CheckFinish)

    -- GOLD COIN
    gold_coin_img = love.graphics.newImage('assets/sprites/coin_gold.png')
    gold_coin_grid = anim8.newGrid(32, 32, gold_coin_img:getWidth(), gold_coin_img:getHeight())
    gold_coin_anim = anim8.newAnimation( gold_coin_grid('1-8', 1), 0.08 )

    -- IMAGES
    menu_image = love.graphics.newImage('assets/sprites/menu-background.png')
    settings_image = love.graphics.newImage('assets/sprites/settings.png')
    level_select_image = love.graphics.newImage('assets/sprites/level-select.png')
    pause_image = love.graphics.newImage('assets/sprites/pause-screen.png')
    gameover_image = love.graphics.newImage('assets/sprites/game-over.png')
    level_complete_image = love.graphics.newImage('assets/sprites/level-complete2.png')
    star_image = love.graphics.newImage('assets/sprites/star.png')
    star_small_img = love.graphics.newImage('assets/sprites/star-small.png')

    -- BALLOON IMAGES (MOVE TO ANOTHER FILE)
    balloon_imgs = {}
    single_balloons_img = love.graphics.newImage('assets/sprites/single_balloons.png')
    single_balloon_quads = {}
    generateQuads(single_balloons_img, 8, single_balloon_quads, 114, 295, 1)
    for bq in pairs(single_balloon_quads) do
        table.insert(balloon_imgs, {single_balloons_img, single_balloon_quads[bq]})
    end
    balloon_imgs[9] = love.graphics.newImage('assets/sprites/balloon1.png')

    -- MUSIC
    music_track = love.audio.newSource("assets/sounds/background_music.wav", "stream")
    music_track:setVolume(0.05)
    gold_coin_sfx = love.audio.newSource("assets/sounds/gold-coin.wav", "static")
    gold_coin_sfx:setVolume(0.3)
    gold_coin_sfx:setPitch(1.8)
    level_complete_sfx = love.audio.newSource("assets/sounds/level-complete.wav", "static")
    level_complete_sfx:setVolume(0.3)
    level_complete_sfx:setPitch(1.2)
    button_click_sfx = love.audio.newSource("assets/sounds/button-click.wav", "static")
    button_click_sfx:setVolume(0.5)
    button_click_sfx:setPitch(7)

    volumePercentage = 0.5
    love.audio.setVolume(volumePercentage)
    volumeSlider = newSlider(400, 265, 250, 0.5, 0, 1, function (v) love.audio.setVolume(v) volumePercentage = v end)
end

-- local timer = 0

function love.update(dt)
    checkForTimedEvents(dt)

    -- timer = timer + dt
    -- if timer > 1 then
    --     print(love.mouse.getPosition())
    --     timer = 0
    -- end

    if (VOLUME_ENABLED) then
        love.audio.setVolume(volumePercentage)
        if not music_track:isPlaying( ) then
            love.audio.play(music_track)
        end
    else
        love.audio.setVolume(0)
        love.audio.stop() -- Disables all sounds (not just music track)
    end

    for bt in pairs(buttons) do -- Sets hover effect to all buttons
        for index in pairs(buttons[bt]) do
            buttons[bt][index]:hover()
        end
    end

    if (GAMESTATE == 'SETTINGS') then
        volumeText = love.graphics.newText(DEFAULT_FONT, string.format("%d%%", volumePercentage * 100))
        volumeSlider:update()
        return
    end

    if (GAMESTATE == 'PAUSED') then
        player.anim:gotoFrame(2)
        return
    end

    if (GAMESTATE == 'LEVEL_COMPLETE') then
        for b in pairs(balloons) do
            balloons[b]:update(dt)
        end
        return
    end

    if (GAMESTATE == 'PLAYING_LEVEL') then
        if CURRENT_DIRECTION ~= "" then
            COMPLETION_TIME = COMPLETION_TIME + dt
            if not (COIN_EARNED) then
                checkGoldCoin()
            end
            checkCollision(CURRENT_DIRECTION)
            checkFinish(dt)
            playerMove(CURRENT_DIRECTION)
        else
            player.anim:gotoFrame(2)
        end
        sendKeyboardInputs()
        player.anim:update(dt)
        gold_coin_anim:update(dt)
        return
    end
end

function love.draw()
    if (GAMESTATE == 'PLAYING_LEVEL') then
        gameMap:draw(0, 0, SCALE_X, SCALE_Y)
        player.anim:draw(player.spriteSheet, player.x, player.y, 0, 1, 1, PLAYER_WIDTH / 2, PLAYER_HEIGHT / 2)
        if not (COIN_EARNED) then
            gold_coin_anim:draw(gold_coin_img, goldCoin.from.x, goldCoin.from.y, 0, 1.2, 1.2, 5, 10)
        end
    elseif (GAMESTATE == 'PAUSED') then
        drawPauseScreen()
    elseif (GAMESTATE == 'LEVEL_COMPLETE') then
        drawLevelComplete()
    elseif (GAMESTATE == 'GAME_OVER') then
        drawGameOver()
    end

    if (GAMESTATE == 'MENU_SCREEN') then
        drawMainMenu()
    elseif (GAMESTATE == 'LEVEL_SELECT') then
        drawLevelSelect()
    elseif (GAMESTATE == 'SETTINGS') then
        drawSettings()
    end
end

function love.mousepressed(x, y, button, istouch)
    if (GAMESTATE == 'MENU_SCREEN') then
        if button == 1 then
            for index in pairs(buttons.menu) do
                buttons.menu[index]:click()
            end
        end
    end

    if (GAMESTATE == 'LEVEL_SELECT') then
        if button == 1 then
            for index in pairs(buttons.lvlselect) do
                buttons.lvlselect[index]:click()
            end
        end
    end

    if (GAMESTATE == 'SETTINGS') then
        if button == 1 then
            for index in pairs(buttons.settings) do
                buttons.settings[index]:click()
            end
            buttons.lvlselect.back:click()
        end
    end

    if (GAMESTATE == 'PAUSED') then
        if button == 1 then
            for index in pairs(buttons.pause) do
                buttons.pause[index]:click()
            end
        end
    end

    if (GAMESTATE == 'GAME_OVER') then
        if button == 1 then
            for index in pairs(buttons.gameover) do
                buttons.gameover[index]:click()
            end
        end
    end

    if (GAMESTATE == 'LEVEL_COMPLETE') then
        if button == 1 then
            for index in pairs(buttons.lvlcomplete) do
                buttons.lvlcomplete[index]:click()
            end
        end
    end
    -- love.mouse.setCursor() -- Reset cursor to normal if hovering effect "hand" cursor is enabled
end