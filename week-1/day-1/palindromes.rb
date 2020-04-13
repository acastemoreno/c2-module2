def palindrome?(sentence)
  original = sentence.downcase.gsub(/[ ]/, "")
  transformed = original.reverse
  original == transformed
end

puts palindrome?("holi woli , ilow iloh")