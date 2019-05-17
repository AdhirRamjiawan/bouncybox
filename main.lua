-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local blockSize = 50
local rect = display.newRect( blockSize, blockSize, blockSize, blockSize )
local speed = 10
local directionX = 1
local directionY = 1

local function updateDirection()
    if rect.x < 0 and directionX < 0 then
        directionX = 1
    end

    if (rect.x + blockSize) > display.contentWidth and directionX > 0 then
        directionX = -1
    end

    
    if rect.y < 0 and directionY < 0 then
        directionY = 1
    end

    if (rect.y + blockSize) > display.contentHeight and directionY > 0 then
        directionY = -1
    end
end

local function onFrame(event)
 --   print(rect.x)
    rect.x = rect.x + (speed * directionX)
    rect.y = rect.y + (speed * directionY)
    updateDirection()
end


Runtime:addEventListener("enterFrame", onFrame)
