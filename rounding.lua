function rounding(number1, number2)
  local division = number1 / number2
  local result = math.floor(division + 0.5)
  return result
end

function dataCapture(inputL, length, acum)
  if acum <= length then
    local num1, num2 = string.match(inputL, "(%S+)%s(%S+)")
    num1 = tonumber(num1)
    num2 = tonumber(num2)
    local data = rounding(num1, num2)
    io.write(data, " ")
    local newData = io.read()
    dataCapture(newData, length, acum + 1)
  end
end

local length = tonumber(io.read())
local input = io.read()
dataCapture(input, length, 1)
