Balloon = {}
Balloon.__index = Balloon


function Balloon:new(img, x, y, speed)
    local b = {}
    b.img = img
    b.x = x
    b.y = y
    b.speed = speed

    b.timer = 0
    b.velocity = math.random(-1, 1)
    setmetatable(b, Balloon)
    return b
end

function Balloon:update(dt)
    if self.y < -400 then
        return
    end

    self.y = self.y - self.speed
    self.timer = self.timer + dt
    if self.timer > 1 then
        self.velocity = math.random(-1, 1)
        self.timer = 0
    end
    self.x = self.x + self.velocity
end

function Balloon:draw()
    if type(self.img) ~= "userdata" then
        love.graphics.draw(self.img[1], self.img[2], self.x, self.y - self.speed, self.rotation, 1, 1)
    else
        love.graphics.draw(self.img, self.x, self.y - self.speed, self.rotation, 1, 1)
    end
end
