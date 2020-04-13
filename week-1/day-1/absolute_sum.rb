def absolute_sum(a,b)
  sum = a + b
  if sum < 0
    sum*-1
  else
    sum
  end
end

puts absolute_sum(1,2)
puts absolute_sum(-10, -29)