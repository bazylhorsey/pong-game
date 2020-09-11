
Computer = Class{}

function Computer:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0

end

function Computer:update(dt)
    if ball.y < self.y then
        self.dy = -PADDLE_SPEED
    elseif ball.y > self.y then
        self.dy = PADDLE_SPEED
    else
        self.dy = 0
    end

    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
    elseif self.dy > 0 then
        self.y = math.min(VIRTUAL_HEIGHT - 20, self.y + self.dy * dt)
    end
end

function Computer:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end