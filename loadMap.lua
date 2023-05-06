function loadMap(mapLevel)
    local mapExists = love.filesystem.getInfo("assets/maps/Level" .. mapLevel .. ".lua")
    if not (mapExists) then
        print('This map does not exist.')
        return
    end

    currentLevel = mapLevel

    gameMap = sti("assets/maps/Level" .. mapLevel .. ".lua")

    if gameMap.layers["startPosition"] then
        for _, obj in pairs(gameMap.layers["startPosition"].objects) do
            player.x = (obj.x + (obj.width / 2)) * SCALE_X
            player.y = (obj.y + (obj.height / 2)) * SCALE_Y
        end
    end

    finishLine = {from = {}, to = {}}
    if gameMap.layers["finishLine"] then
        for _, obj in pairs(gameMap.layers["finishLine"].objects) do
            finishLine.from.x, finishLine.to.x = obj.x * SCALE_X, (obj.x + obj.width) * SCALE_X
            finishLine.from.y, finishLine.to.y = obj.y * SCALE_X, (obj.y + obj.height) * SCALE_Y
        end
    end

    goldCoin = {from = {}, to = {}}
    if gameMap.layers["goldCoin"] then
        for _, obj in pairs(gameMap.layers["goldCoin"].objects) do
            goldCoin.from.x, goldCoin.to.x = obj.x * SCALE_X, (obj.x + obj.width) * SCALE_X
            goldCoin.from.y, goldCoin.to.y = obj.y * SCALE_X, (obj.y + obj.height) * SCALE_Y
        end
    end

    wallCollisions = {}
    if gameMap.layers["wallCollisions"] then
        for _, obj in pairs(gameMap.layers["wallCollisions"].objects) do
            table.insert(wallCollisions, {obj.x, obj.y, obj.width, obj.height})
        end
    end

    CURRENT_DIRECTION = "" -- "dir_" .. gameMap.layers["startPosition"].properties["Direction"]
    player.anim = player.animations[gameMap.layers["startPosition"].properties["Direction"]]

    GAMESTATE = 'PLAYING_LEVEL'
    COMPLETION_TIME = 0
    COIN_EARNED = false
end
