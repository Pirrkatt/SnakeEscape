function loadMap(mapLevel)

    gameMap = sti("maps/Level" .. mapLevel .. ".lua")

    if gameMap.layers["startPosition"] then
        for i, obj in pairs(gameMap.layers["startPosition"].objects) do
            player.x = (obj.x * scaleX) - 21 -- Remove half of Player Size to center on x/y
            player.y = (obj.y * scaleY) - 21
        end
    end
end

