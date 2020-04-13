def find_frequency(sentence, word)
  sentence.downcase.split(" ").count(word)
end

puts find_frequency("Do or do not... there is no try.", "do") #must return 2