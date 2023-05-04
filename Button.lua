Button = {}
Button.__index = Button
-- local mtButton = {__index = Button}
-- put methods into the class like this:
--[[
function Button:foo(blah)
  -- code, hidden self is the instance.
end
--]]

function Button:new(text, font, img, quad, hover_quad, x, y, width, height, func, func_params, sx, sy, text_color, bg_color)
    local btn = {}
    btn.text = text or ""
    btn.font = font or nil
    btn.img = img or nil
    btn.quad = quad or nil
    btn.hover_quad = hover_quad or nil
    btn.button_x = x or 0
    btn.button_y = y or 0
    btn.width = width or 100
    btn.height = height or 100
    btn.func = func or function() print('This button has no function.') end
    btn.func_params = func_params or nil
    btn.scale_x = sx or 1
    btn.scale_y = sy or 1
    btn.text_color = text_color or {1, 1, 1}
    btn.bg_color = bg_color or {1, 1, 1}

    btn.hovering = false
    btn.old_quad = quad or nil
    -- btn.centered = centered or false -- x/y values origins from center of object/text instead of upper left corner
    setmetatable(btn, Button) -- Return metatable instead?
    return btn
end

function Button:draw()
    if (self.quad) then
        love.graphics.draw(self.img, (self.hovering and self.hover_quad or self.quad), self.button_x, self.button_y, 0, self.scale_x, self.scale_y)
    elseif (self.img) then
        love.graphics.draw(self.img, self.button_x, self.button_y, 0, self.scale_x, self.scale_y)
    elseif (self.bg_color) then
        local r, g, b = unpack(self.bg_color)
        if (DIFFICULTY == self.text) then
            love.graphics.setColor(r, g, b)
            love.graphics.rectangle("fill", self.button_x, self.button_y, self.width, self.height)
        end
        if (self.hovering) then
            love.graphics.setColor(r, g, b, 0.7)
            love.graphics.rectangle("fill", self.button_x, self.button_y, self.width, self.height)
        -- else
        --     love.graphics.setColor(0, 0, 0)
        end
    end

    if self.text ~= "" then
        local text = love.graphics.newText(self.font, self.text)
		local text_width = self.font:getWidth(self.text)
        local text_height = self.font:getHeight(self.text)
        love.graphics.setColor(unpack(self.text_color))
		love.graphics.draw(text, math.floor(self.button_x + (self.width / 2)), math.floor(self.button_y + (self.height / 2)), 0, self.scale_x, self.scale_y, math.floor(text_width / 2), math.floor(text_height / 2))
    end

    love.graphics.setColor(1, 1, 1) -- Resets colors to default values
end

function Button:hover()
	local mouseX, mouseY = love.mouse.getPosition()
    if (mouseX >= self.button_x) and (mouseX <= self.button_x + (self.width * self.scale_x)) and -- Should I check x first then y? Performance difference maybe?
        (mouseY >= self.button_y) and (mouseY <= self.button_y + (self.height * self.scale_y)) then

        self.hovering = true
    else
        self.hovering = false
    end
end

function Button:click()
	local mouseX, mouseY = love.mouse.getPosition()
    if (mouseX >= self.button_x) and (mouseX <= self.button_x + (self.width * self.scale_x)) and
        (mouseY >= self.button_y) and (mouseY <= self.button_y + (self.height * self.scale_y)) then

        if (self.func_params) then
            self.func(unpack(self.func_params))
        else
            self.func()
        end

        button_click_sfx:play()
    end
end

function Button:setQuads(quad, hover_quad) -- Used for when we wanna change image entirely (color of volume button etc)
    self.quad = quad
    self.hover_quad = hover_quad
end

-- return Button