require 'Balloon'

-- DRAW STATES
function drawMainMenu()
	love.graphics.draw(menu_image)

	for index in pairs(buttons.menu) do
		buttons.menu[index]:draw()
	end
end

function drawLevelSelect()
	love.graphics.draw(level_select_image)

	for index in pairs(buttons.lvlselect) do
		buttons.lvlselect[index]:draw()
	end
end

function drawSettings()
	love.graphics.draw(settings_image)

	for index in pairs(buttons.settings) do
		buttons.settings[index]:draw()
	end
	buttons.lvlselect.back:draw()
end

function drawPauseScreen()
	gameMap:draw(0, 0, SCALE_X, SCALE_Y)
	player.anim:draw(player.spriteSheet, player.x, player.y, 0, 1, 1, PLAYER_WIDTH / 2, PLAYER_HEIGHT / 2)
	love.graphics.draw(pause_image)

	for index in pairs(buttons.pause) do
		buttons.pause[index]:draw()
	end
end

function drawLevelComplete()
	gameMap:draw(0, 0, SCALE_X, SCALE_Y)
	love.graphics.draw(level_complete_image)

	for index in pairs(buttons.lvlcomplete) do
		buttons.lvlcomplete[index]:draw()
	end

	if (COIN_EARNED) then
		love.graphics.draw(star_image, 340, 330)
	end
	time_text = Button:new((string.format("%.2f Seconds", COMPLETION_TIME)), DEFAULT_FONT, nil, nil, nil, 363, 476, 174, 55, nil, nil)
	time_text:draw()

	for i = 1, #balloons do
		balloons[i]:draw()
	end
end

function drawGameOver()
	print('asd')
end

-- PLAYER INPUTS
function playerMove(dir)
    if dir == "dir_up" then
        player.y = player.y - player.speed
    elseif dir == "dir_right" then
        player.x = player.x + player.speed
    elseif dir == "dir_down" then
        player.y = player.y + player.speed
    elseif dir == "dir_left" then
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
		if GAMESTATE == 'PLAYING_LEVEL' then
			GAMESTATE = 'PAUSED'
		elseif GAMESTATE == 'PAUSED' then
			GAMESTATE = 'PLAYING_LEVEL'
		end
	end
	return player.anim
end

-- GAMEPLAY CHECKS
function checkCollision(dir)
	for _, v in pairs(wallCollisions) do
		if dir == "dir_up" then
			if (player.y >= (v[2] * SCALE_Y)) and (player.y <= ((v[2] + v[4]) * SCALE_Y) and (player.x >= v[1] * SCALE_X) and (player.x <= ((v[1] + v[3]) * SCALE_X))) then
				GAMESTATE = 'GAME_OVER'
			end
		elseif dir == "dir_left" then
			if (player.y >= (v[2] * SCALE_Y)) and (player.y <= (v[2] + v[4]) * SCALE_Y) and (player.x >= v[1] * SCALE_X) and (player.x <= (v[1] + v[3]) * SCALE_X) then
				GAMESTATE = 'GAME_OVER'
			end
		elseif dir == "dir_right" then
			if (player.y >= (v[2] * SCALE_Y)) and (player.y <= (v[2] + v[4]) * SCALE_Y) and ((player.x + PLAYER_WIDTH) >= v[1] * SCALE_X) and ((player.x + PLAYER_WIDTH) <= (v[1] + v[3]) * SCALE_X) then
				GAMESTATE = 'GAME_OVER'
			end
		elseif dir == "dir_down" then
			if ((player.y + PLAYER_HEIGHT) >= (v[2] * SCALE_Y)) and ((player.y + PLAYER_HEIGHT) <= (v[2] + v[4]) * SCALE_Y) and ((player.x + PLAYER_WIDTH) >= v[1] * SCALE_X) and ((player.x + PLAYER_WIDTH) <= (v[1] + v[3]) * SCALE_X) then
				GAMESTATE = 'GAME_OVER'
			end
		end
	end
end

local coin_offset = 10 -- Does performance matter if this is inside checkGoldCoin() instead?
function checkGoldCoin()
	if (player.x >= goldCoin.from.x - coin_offset) and (player.x <= goldCoin.to.x + coin_offset) and
	(player.y >= goldCoin.from.y - coin_offset) and (player.y <= goldCoin.to.y + coin_offset) then
		COIN_EARNED = true
		if (VOLUME_ENABLED) then
			love.audio.play(gold_coin_sfx)
		end
	end
end


function checkFinish()
	if (player.x >= finishLine.from.x) and (player.x <= finishLine.to.x) and
	(player.y >= finishLine.from.y) and (player.y <= finishLine.to.y) then
		GAMESTATE = 'LEVEL_COMPLETE'
		for i = 1, 30 do
			balloons[i] = Balloon:new(balloon_imgs[math.random(#balloon_imgs)], math.random(0, GAME_WIDTH), math.random(700, 1500), math.random(1, 5))
		end

        setTimedEvent(function() -- Fix so it's timer resets if another level is completed (make function to stopEvent() or insert to TIMED_EVENTS with id/name and replace it when called again)
            for j in pairs(balloons) do
                balloons[j] = nil
            end
        end, 15)

		if (VOLUME_ENABLED) then
			music_track:setVolume(music_track:getVolume() / 3)
			love.audio.play(level_complete_sfx)

			setTimedEvent(function()
				music_track:setVolume(music_track:getVolume() * 3)
			end, 3)
		end
	end
end

-- BUTTON FUNCTIONS
function volumeButton(quad)
    if (VOLUME_ENABLED) then
        VOLUME_ENABLED = false
        buttons.menu.volume:setQuads(quad[3], quad.hover[3])
    else
        VOLUME_ENABLED = true
        buttons.menu.volume:setQuads(quad[2], quad.hover[2])
    end
end

function restartLevelButton()
    loadMap(currentLevel)
end

function nextLevelButton()
    loadMap(currentLevel + 1)
end

function difficultyButton(difficulty, speed)
	if DIFFICULTY ~= difficulty then
		DIFFICULTY = difficulty
		player.speed = speed
	end
end
