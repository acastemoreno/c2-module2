def sum_of_cubes(a, b)
  (a..b).sum{|i| i**3}
end

puts sum_of_cubes(1, 3) #return 36