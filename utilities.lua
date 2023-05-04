function generateQuads(image, count, table, width, height, row)
    for i = 1, count do
        table[i] = love.graphics.newQuad(width * (i - 1), height * (row - 1), width, height, image:getWidth(), image:getHeight())
    end
end

function generateQuads2(image, count, table, width, height, row)
    for i = 1, count do
        table[i] = {image, love.graphics.newQuad(width * (i - 1), height * (row - 1), width, height, image:getWidth(), image:getHeight())}
    end
end

function isInArray(array, value)
	for _, v in pairs(array) do
		if v == value then
			return true
		end
	end
	return false
end

function setTimedEvent(fnc, timer)
    table.insert(TIMED_EVENTS, {fnc, timer, os.time(), os.time()})
end

function checkForTimedEvents(dt)
    for event in pairs(TIMED_EVENTS) do
        if TIMED_EVENTS[event][4] - TIMED_EVENTS[event][3] >= TIMED_EVENTS[event][2] then
            TIMED_EVENTS[event][1]() -- Executes function
            TIMED_EVENTS[event] = nil
            return
        end
        TIMED_EVENTS[event][4] = TIMED_EVENTS[event][4] + dt
    end
end
