def non_duplicated_values(values)
  values.uniq.select{|i| values.count(i) == 1}
end