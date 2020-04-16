def array_of_fixnums?(array)
  array.all?{|f| f.is_a? Fixnum}
end

puts array_of_fixnums?([1,2,3]) #True