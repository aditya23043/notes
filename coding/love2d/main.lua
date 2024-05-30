_G.love = require("love")

function love.load()
	Count = 0
end

function love.update(dt)
	Count = 1 / dt
end

function love.draw()
	love.graphics.print(Count)
	love.graphics.
end
