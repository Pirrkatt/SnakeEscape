-- require("randomFunctions")

local player = {}
local currentDirection = nil

function love.load()
    player.x = 0
    player.y = 0
    player.speed = 1
end

local function playerMove(dir)
    if dir == "up" then
        player.y = player.y - player.speed
    elseif dir == "right" then
        player.x = player.x + player.speed
    elseif dir == "down" then
        player.y = player.y + player.speed
    elseif dir == "left" then
        player.x = player.x - player.speed
    end
    local a = {"asd", "b"}
    print(isInArray(a, "x"))
end

function love.update(dt)
    if currentDirection ~= nil then
        playerMove(currentDirection)
    end
    if love.keyboard.isDown("up") then
        currentDirection = "up"
    elseif love.keyboard.isDown("right") then
        currentDirection = "right"
    elseif love.keyboard.isDown("down") then
        currentDirection = "down"
    elseif love.keyboard.isDown("left") then
        currentDirection = "left"
    elseif love.keyboard.isDown("escape") then -- Pauses
        currentDirection = nil
    elseif love.keyboard.isDown("x") then -- Quits Game
        love.event.quit()
    end
end

function love.draw()
    love.graphics.circle("line", player.x, player.y, 20)
end