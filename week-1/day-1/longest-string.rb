def longest_string(string_a, string_b)
  string_a.length >= string_b.length ? string_a : string_b
end

puts longest_string("I am the longest.", "No, you are not the longest; liar.")
# Prints No, you are not the longest; liar.
