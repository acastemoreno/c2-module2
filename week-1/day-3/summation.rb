def summation(number)
  yield(number)
end

puts summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12
