function isInArray(array, value)
	for _, v in pairs(array) do
		if v == value then
			return true
		end
	end
	return false
end

function drawMainMenu()
	love.graphics.draw(menu_image, 0, 0, 0, scaleX, scaleY)
	for k in pairs(menu_texts) do
		local text = love.graphics.newText(font, menu_texts[k].text)
		local textWidth = font:getWidth(menu_texts[k].text)
		menu_texts[k].x = (GAME_WIDTH / 2) - (textWidth / 2)
		love.graphics.draw(text, menu_texts[k].x, menu_texts[k].y)
	end

	if (VOLUME_ENABLED) then
		if (HOVERING_VOLUME) then
			love.graphics.draw(volume_image, volume_buttons[2], vol_cord_x, vol_cord_y, 0, 0.4, 0.4)
		else
			love.graphics.draw(volume_image, volume_buttons[1], vol_cord_x, vol_cord_y, 0, 0.4, 0.4)
		end
	else
		if (HOVERING_VOLUME) then
			love.graphics.draw(volume_image, volume_buttons[4], vol_cord_x, vol_cord_y, 0, 0.4, 0.4)
		else
			love.graphics.draw(volume_image, volume_buttons[3], vol_cord_x, vol_cord_y, 0, 0.4, 0.4)
		end
	end
end

function menuButtons(x, y)
	for k in pairs(menu_texts) do
		if (x >= menu_texts[k].x) and (x <= menu_texts[k].x + font:getWidth(menu_texts[k].text)) and
		(y >= menu_texts[k].y) and (y <= menu_texts[k].y + font:getHeight(menu_texts[k].text)) then
			if k == 'play' then
				return loadMap(1)
			elseif k == 'level' then
				print('Select Level')
			elseif k == 'quit' then
				print('asd')
				return love.event.quit()
			end
		end
	end

	if (x >= vol_cord_x) and (x <= vol_cord_x + vol_width * 0.4) and (y >= vol_cord_y) and (y <= vol_cord_y + vol_width * 0.4) then
		if (VOLUME_ENABLED) then
			VOLUME_ENABLED = false
		else
			VOLUME_ENABLED = true
		end
		return
	end
end

function hoverTextCursor(textTable)
	local hoverText = false
	local handCursor = love.mouse.getSystemCursor("hand")
	local mouseX, mouseY = love.mouse.getPosition()

	for k in pairs(textTable) do
		if (mouseX >= textTable[k].x) and (mouseX <= textTable[k].x + font:getWidth(textTable[k].text)) and
			(mouseY >= textTable[k].y) and (mouseY <= textTable[k].y + font:getHeight(textTable[k].text)) then
			hoverText = true
		end
	end

	HOVERING_VOLUME = false
	if (mouseX >= vol_cord_x) and (mouseX <= vol_cord_x + vol_width * 0.4) and (mouseY >= vol_cord_y) and (mouseY <= vol_cord_y + vol_width * 0.4) then
		hoverText = true
		HOVERING_VOLUME = true
	end

	if (hoverText) then
        return love.mouse.setCursor(handCursor)
	else
		return love.mouse.setCursor()
    end
end

function drawGameOver()
	love.graphics.draw(game_over_image, 0, 0, 0, game_over_scaleX, game_over_scaleY)
	for k in pairs(game_over_text) do
		local text = love.graphics.newText(font, game_over_text[k].text)
		local textWidth = font:getWidth(game_over_text[k].text)
		love.graphics.draw(text, (GAME_WIDTH / 2) - (textWidth / 2), game_over_text[k].y)
	end
end

function checkFinish()
	if (player.x >= finishLine.from.x) and (player.x <= finishLine.to.x) and
	(player.y >= finishLine.from.y) and (player.y <= finishLine.to.y) then
		GAMESTATE = 'LEVEL_FINISHED'
	end
end

local bal = {}
function sendBalloons()
	for i = 1, 10 do
		table.insert(bal, love.graphics.newImage('assets/sprites/balloons2.png'))
	end
	love.graphics.draw(bal[1], 0, GAME_HEIGHT / 2, 0 , 1, 1, math.random(0, 1000), math.random(0, 1000))
end

function checkCollision(dir)
	for _, v in pairs(wallCollisions) do
		if dir == "dir_up" then
			if (player.y >= (v[2] * scaleY)) and (player.y <= ((v[2] + v[4]) * scaleY) and (player.x >= v[1] * scaleX) and (player.x <= ((v[1] + v[3]) * scaleX))) then
				GAMESTATE = 'GAME_OVER'
				return
			end
		elseif dir == "dir_left" then
			if (player.y >= (v[2] * scaleY)) and (player.y <= (v[2] + v[4]) * scaleY) and (player.x >= v[1] * scaleX) and (player.x <= (v[1] + v[3]) * scaleX) then
				GAMESTATE = 'GAME_OVER'
				return
			end
		elseif dir == "dir_right" then
			if (player.y >= (v[2] * scaleY)) and (player.y <= (v[2] + v[4]) * scaleY) and ((player.x + PLAYER_WIDTH) >= v[1] * scaleX) and ((player.x + PLAYER_WIDTH) <= (v[1] + v[3]) * scaleX) then
				GAMESTATE = 'GAME_OVER'
				return
			end
		elseif dir == "dir_down" then
			if ((player.y + PLAYER_HEIGHT) >= (v[2] * scaleY)) and ((player.y + PLAYER_HEIGHT) <= (v[2] + v[4]) * scaleY) and ((player.x + PLAYER_WIDTH) >= v[1] * scaleX) and ((player.x + PLAYER_WIDTH) <= (v[1] + v[3]) * scaleX) then
				GAMESTATE = 'GAME_OVER'
				return
			end
		end
	end
end

function playerMove(dir)
    if dir == "dir_up" then
        -- if player.y <= (0 - 10) then
        --     return
        -- end
        player.y = player.y - player.speed
    elseif dir == "dir_right" then
        -- if player.x >= (GAME_HEIGHT - 30) then
        --     return
        -- end
        player.x = player.x + player.speed
    elseif dir == "dir_down" then
        -- if player.y >= (GAME_HEIGHT - 30) then
        --     return
        -- end
        player.y = player.y + player.speed
    elseif dir == "dir_left" then
        -- if player.x <= (0 - 10) then
        --     return
        -- end
        player.x = player.x - player.speed
    end
end

function sendKeyboardInputs()
	if love.keyboard.isDown("up") then
		if CURRENT_DIRECTION == "dir_down" then
			return
		end
		CURRENT_DIRECTION = "dir_up"
		player.anim = player.animations.up
	elseif love.keyboard.isDown("right") then
		if CURRENT_DIRECTION == "dir_left" then
			return
		end
		CURRENT_DIRECTION = "dir_right"
		player.anim = player.animations.right
	elseif love.keyboard.isDown("down") then
		if CURRENT_DIRECTION == "dir_up" then
			return
		end
		CURRENT_DIRECTION = "dir_down"
		player.anim = player.animations.down
	elseif love.keyboard.isDown("left") then
		if CURRENT_DIRECTION == "dir_right" then
			return
		end
		CURRENT_DIRECTION = "dir_left"
		player.anim = player.animations.left
	elseif love.keyboard.isDown("escape") then -- Pauses
		CURRENT_DIRECTION = ""
	end
	return player.anim
end