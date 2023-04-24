require("randomFunctions")
require("loadMap")

local currentDirection = nil

function love.load()
    anim8 = require 'libraries/anim8'
    sti = require 'libraries/sti'
    -- love.graphics.setDefaultFilter("nearest", "nearest") -- Disable Blur on scaling

    player = {}
    player.spriteSheet = love.graphics.newImage('sprites/snake-sheet.png')
    player.grid = anim8.newGrid(42, 42, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    player.animations = {}
    player.animations.down = anim8.newAnimation( player.grid('1-3', 1), 0.2 )
    player.animations.left = anim8.newAnimation( player.grid('1-3', 2), 0.2 )
    player.animations.right = anim8.newAnimation( player.grid('1-3', 3), 0.2 )
    player.animations.up = anim8.newAnimation( player.grid('1-3', 4), 0.2 )

    player.anim = player.animations.right -- Default Direction

    player.speed = 1

    menuScreen = true
    menuImage = love.graphics.newImage('sprites/mainMenuTEMPORARY.png')
    imgWidth = menuImage:getWidth()
    imgHeight = menuImage:getHeight()
    scaleX = love.graphics.getWidth() / imgWidth
    scaleY = love.graphics.getHeight() / imgHeight
    local font = love.graphics.newFont(30)
    menuTexts = {
        play = {text = love.graphics.newText(font, "PLAY"), x = 365, y = 315},
        levelSelect = {text = love.graphics.newText(font, "SELECT LEVEL"), x = 295, y = 375},
        quit = {text = love.graphics.newText(font, "QUIT"), x = 365, y = 435}
    }
end

local function playerMove(dir)
    if dir == "up" then
        if player.y <= (0 - 10) then
            return
        end
        player.y = player.y - player.speed
    elseif dir == "right" then
        if player.x >= (love.graphics.getHeight() - 30) then
            return
        end
        player.x = player.x + player.speed
    elseif dir == "down" then
        if player.y >= (love.graphics.getHeight() - 30) then
            return
        end
        player.y = player.y + player.speed
    elseif dir == "left" then
        if player.x <= (0 - 10) then
            return
        end
        player.x = player.x - player.speed
    end
end

function love.update(dt)
    local hoverText = false
    local handCursor = love.mouse.getSystemCursor("hand")
    if (menuScreen) then
        local mouseX, mouseY = love.mouse.getPosition()
        for k in pairs(menuTexts) do
            if (mouseX >= menuTexts[k].x) and (mouseX <= menuTexts[k].x + menuTexts[k].text:getWidth()) and
                (mouseY >= menuTexts[k].y) and (mouseY <= menuTexts[k].y + menuTexts[k].text:getHeight()) then
                hoverText = true
            end
        end
    end

    if (hoverText) then
        love.mouse.setCursor(handCursor)
    else
        love.mouse.setCursor()
    end

    if (playingLevel) then
        if currentDirection ~= nil then
            playerMove(currentDirection)
        else
            player.anim:gotoFrame(2)
        end

        if love.keyboard.isDown("up") then
            currentDirection = "up"
            player.anim = player.animations.up
        elseif love.keyboard.isDown("right") then
            currentDirection = "right"
            player.anim = player.animations.right
        elseif love.keyboard.isDown("down") then
            currentDirection = "down"
            player.anim = player.animations.down
        elseif love.keyboard.isDown("left") then
            currentDirection = "left"
            player.anim = player.animations.left
        elseif love.keyboard.isDown("escape") then -- Pauses
            currentDirection = nil
        elseif love.keyboard.isDown("x") then -- Quits Game
            love.event.quit()
        end
    end
    player.anim:update(dt)
end

function love.draw()
    if (playingLevel) then
        gameMap:draw(0, 0, scaleX, scaleY)
        player.anim:draw(player.spriteSheet, player.x, player.y)
    elseif (menuScreen) then
        love.graphics.draw(menuImage, 0, 0, 0, scaleX, scaleY)
        for k in pairs(menuTexts) do
            love.graphics.draw(menuTexts[k].text, menuTexts[k].x, menuTexts[k].y)
        end
    end
end

function love.mousepressed(x, y, button, istouch)
    if (menuScreen) then
        for k in pairs(menuTexts) do
            if (x >= menuTexts[k].x) and (x <= menuTexts[k].x + menuTexts[k].text:getWidth()) and
            (y >= menuTexts[k].y) and (y <= menuTexts[k].y + menuTexts[k].text:getHeight()) then
                if button == 1 then
                    if k == 'play' then
                        loadMap(1)
                        playingLevel = true
                    elseif k == 'levelSelect' then
                        print('Select Level')
                    elseif k == 'quit' then
                        love.event.quit()
                    end
                    return
                end
            end
        end
    end
end