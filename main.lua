-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on 26th March
-- created by Momin Ahmed 
-- after you input a day and your age then maybe you will get a chance to enter for free
--
-----------------------------------------------------------------------------------------
--


local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 400, 450, 75 )
dayTextField.id = "day textField"


local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 200, 450, 75 )
ageTextField.id = "day textField"

local nameADayField = display.newText( "What day is it?", display.contentCenterX, display.contentCenterY - 500, native.systemFont, 85 )
nameADayField.id = "day textField"
nameADayField:setFillColor( 1, 1, 1 )

local yourageField = display.newText( "What is your age", display.contentCenterX, display.contentCenterY - 300, native.systemFont, 85 )
yourageField.id = "age textField"
yourageField:setFillColor( 1, 1, 1 )

local payField = display.newText( "", display.contentCenterX, display.contentCenterY + 500, native.systemFont, 85 )
payField.id = "pay textField"
payField:setFillColor( 1, 1, 1 )

local freeField = display.newText( "", display.contentCenterX, display.contentCenterY + 500, native.systemFont, 85 )
freeField.id = "free textField"
freeField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 151 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local age
local day

local function calculateButtonTouch( event )

	age = tonumber(ageTextField.text)
	day = dayTextField.text

	if (day == "tuesday" or day == "thursday") or (age < 21 and age > 12) then
		freeField.text = " your entry in this Mueseum is free "
	else payField.text = " you have to pay to enter "
	end

	return true
end		

calculateButton:addEventListener( "touch", calculateButtonTouch )