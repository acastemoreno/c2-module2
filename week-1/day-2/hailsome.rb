def hailsone(x)
  if x < 0 and x.is_a? Integer then
    puts "X Bad Value"
    exit!
  end
  i = 0
  until x==1 do
    puts "x: %i" % [x]
    if x % 2 == 0
      x /= 2
    else
      x = x * 3 + 1
    end
    i += 1 
  end
  puts "Number of Steps: %i" % [i]
end

hailsone(3)