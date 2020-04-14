def length_finder(input_array)
  input_array.map{|input| input.length}
end

puts length_finder(['things','are','','awesome']).inspect # Return [6,3,0,7]