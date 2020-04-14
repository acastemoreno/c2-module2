def min(numbers)
  min = numbers[0]
  numbers.each do |number| 
    if number < min then min = number end
  end
  min
end

def max(numbers)
  max = numbers[0]
  numbers.each do |number| 
    if number > max then max = number end
  end
  max
end

numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]
puts min(numbers) # Result is -3456
puts max(numbers) # Result is 123891