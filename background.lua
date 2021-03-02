Back = {}

function Back:load()
    self.sky = love.graphics.newImage("Night-Sky.png")
end


function Back:update(dt)

end


function Back:draw()
    love.graphics.draw(self.sky)
end