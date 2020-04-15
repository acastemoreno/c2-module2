def summation(number)
  (1..number).sum{|i| yield(i)}
end

puts summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12
