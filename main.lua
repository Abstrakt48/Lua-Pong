require("player")
require("ball")
require("ai")
require("background")

function love.load()
    Player:load()
    Ball:load()
    AI:load()
    Back:load()
end


function love.update(dt)
    Player:update(dt)
    Ball:update(dt)
    AI:update(dt)
    Back:update(dt)
end


function love.draw()
    Back:draw()
    Player:draw()
    Ball:draw()
    AI:draw()
end

function checkCollide(a, b)

    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
    
end