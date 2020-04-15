def filter(arr)
  result = Array.new

  for i in arr do
    if yield(i)
      result << i
    end
  end

  puts result.inspect

  result
end

test_array = [2, 3, 4, 5]
filter(test_array) { |element| element > 3}
# Result: [4, 5] -> numbers 2 and 3 were removed