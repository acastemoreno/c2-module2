def count_duplicates(array)
  array.sort.inject([nil, 0]) do |(last_val, acc), item|
    if last_val == item 
      acc+=1 
    else 
      last_val = item 
    end
    [last_val, acc]
  end
  .last
end

numbers_1 = [1, 2, 3, 2, 5, 8, 5, 10, 5]
numbers_2 = [17, 13, 19, 17, 19, 7, 10, 11, 5, 11, 18, 13, 3, 12, 19, 0, 17, 1, 12, 12, 5, 12, 1, 1, 0, 14, 5, 4, 9, 9, 3, 10, 9, 9, 12, 16, 9, 17, 12, 11, 2, 2, 14, 8, 11, 12, 7, 1, 16, 2, 14]

puts count_duplicates(numbers_1).inspect # Result 3
puts count_duplicates(numbers_2).inspect # Result 33