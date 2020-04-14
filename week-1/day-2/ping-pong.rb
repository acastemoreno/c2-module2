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

puts pingpong(7) #Result 7
puts pingpong(8) #Result 6
puts pingpong(15) #Result 1
puts pingpong(21) #Result -1
puts pingpong(22) #Result 0
puts pingpong(30) #Result 6
puts pingpong(68) #Result 2
puts pingpong(69) #Result 1
puts pingpong(70) #Result 0
puts pingpong(71) #Result 1
puts pingpong(72) #Result 0
puts pingpong(100) #Result 2