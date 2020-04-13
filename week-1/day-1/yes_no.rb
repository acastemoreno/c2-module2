def bool_to_word bool
  bool ? "Yes" : "No"
end

puts bool_to_word(true)
puts bool_to_word(false)