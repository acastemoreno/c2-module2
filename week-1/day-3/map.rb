def map(arr)
  result = Array.new
  for i in arr do
    result << yield(i)
  end
  puts result.inspect
  
  result
end

test_array = [2, 3, 4, 5]
map(test_array){ |element| element * 3}
# Result: [6, 9, 12, 15]