require("randomFunctions")

local player = {}
local currentDirection = nil

function love.load()
    anim8 = require 'libraries/anim8'
    sti = require 'libraries/sti'
    gameMap = sti('maps/Level1.lua')
    -- love.graphics.setDefaultFilter("nearest", "nearest")

    player.x = 0
    player.y = 0
    player.speed = 1
    player.spriteSheet = love.graphics.newImage('sprites/snake-sheet.png')
    player.grid = anim8.newGrid(42, 42, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    player.animations = {}
    player.animations.down = anim8.newAnimation( player.grid('1-3', 1), 0.2 )
    player.animations.left = anim8.newAnimation( player.grid('1-3', 2), 0.2 )
    player.animations.right = anim8.newAnimation( player.grid('1-3', 3), 0.2 )
    player.animations.up = anim8.newAnimation( player.grid('1-3', 4), 0.2 )

    player.anim = player.animations.right -- Default Direction
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

    player.anim:update(dt)
end

function love.draw()
    local sx = love.graphics.getWidth() / (gameMap.width * gameMap.tilewidth)
    local sy = love.graphics.getHeight() / (gameMap.height * gameMap.tileheight)
    gameMap:draw(0, 0, sx, sy)

    player.anim:draw(player.spriteSheet, player.x, player.y)
end