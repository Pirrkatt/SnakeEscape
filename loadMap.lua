function loadMap(mapLevel)
    currentLevel = mapLevel

    gameMap = sti("assets/maps/Level" .. mapLevel .. ".lua")

    -- if gameMap.layers["goldCoin"] then
    --     for _, obj in pairs(gameMap.layers["goldCoin"].objects) do
    --         spawnGoldCoin()
    --     end
    -- end

    wallCollisions = {}
    if gameMap.layers["wallCollisions"] then
        for _, obj in pairs(gameMap.layers["wallCollisions"].objects) do
            table.insert(wallCollisions, {obj.x, obj.y, obj.width, obj.height})
        end
    end

    if gameMap.layers["startPosition"] then
        for _, obj in pairs(gameMap.layers["startPosition"].objects) do
            player.x = (obj.x + (obj.width / 2)) * scaleX
            player.y = (obj.y + (obj.height / 2)) * scaleY
        end
    end

    finishLine = {from = {}, to = {}}
    if gameMap.layers["finishLine"] then
        for _, obj in pairs(gameMap.layers["finishLine"].objects) do
            finishLine.from.x, finishLine.to.x = obj.x * scaleX, (obj.x + obj.width) * scaleX
            finishLine.from.y, finishLine.to.y = obj.y * scaleX, (obj.y + obj.height) * scaleY
        end
    end

    CURRENT_DIRECTION = "dir_" .. gameMap.layers["startPosition"].properties["Direction"]
    player.anim = player.animations[gameMap.layers["startPosition"].properties["Direction"]]
    GAMESTATE = 'PLAYING_LEVEL'
end
