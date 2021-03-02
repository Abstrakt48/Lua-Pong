AI = {}

function AI:load()
    self.width = 20
    self.height = 100
    self.x = love.graphics.getWidth() - self.width - 10
    self.y = 120
    self.yVel = 0
    self.speed = 500
    self.score = 0

    self.timer = 0
    self.rate = 0.5
end


function AI:update(dt)
    self:checkBound()
    self:move(dt)
    self.timer = self.timer + dt
    if self.timer > self.rate then
        self.timer = 0
        self:target()
    end
end


function AI:move(dt)
    self.y = self.y + self.yVel * dt
end


function AI:target()
    if Ball.y + Ball.height < self.y then
        self.yVel = -self.speed
    elseif Ball.y > self.y + self.height then
        self.yVel = self.speed
    else
        self.yVel = 0
    end
end

function AI:checkBound()
    if self.y < 0 then
        self.y = 0
    elseif self.y + self.height > love.graphics.getHeight() then
        self.y = love.graphics.getHeight() - self.height
    end
end


function AI:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end