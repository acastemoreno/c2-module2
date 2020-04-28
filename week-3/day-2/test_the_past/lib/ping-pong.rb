 
def pingpong(number)
  result_direction = (1..number).inject([0,true]) do |(acc, direction), i|
    if direction
      acc += 1
    else
      acc -= 1
    end
    if (i % 7 == 0) or (i.digits.include?(7))
      direction = !direction
    end
    [acc, direction]
  end
  result_direction[0]
end