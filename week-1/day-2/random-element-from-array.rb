def random_select(array, n)
  new_array = Array.new
  len = array.length
  n.times{new_array << array[rand(len)]}
  new_array
end

puts random_select([1, 2, 3, 4, 5], 3).inspect