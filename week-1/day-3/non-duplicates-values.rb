def non_duplicated_values(values)
  values.uniq.select{|i| values.count(i) == 1}
end

puts non_duplicated_values([1,2,2,3,3,4,5]).inspect #Return [1,4,5]
puts non_duplicated_values([1,2,2,3,4,4]).inspect #Return [1,3]