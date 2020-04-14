def count_words(string)
  response = Hash.new
  all_words = string.downcase.split(" ")
  all_words.uniq.each{|unique| response[unique] = all_words.count(unique)}
  response
end

puts count_words("cake cake caKe I like cake very much please gIve me cake I need the cake i need it").inspect
# Result
#{
#  "cake"=>6,
#  "i"=>3,
#  "like"=>1,
#  "very"=>1,
#  "much"=>1,
#  "please"=>2,
#  "give"=>1,
#  "me"=>1,
#  "need"=>2,
#  "the"=>1,
#  "it"=>1
#}