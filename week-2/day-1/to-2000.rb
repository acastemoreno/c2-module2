require "readline"

def to_2000(string)
  string
    .split("")
    .map.with_index {|letter, i| i.even? ? letter.upcase : letter.downcase}
    .join("")
end

while true
  print "String? "
  text_input = Readline.readline("> ", true)
  puts to_2000(text_input)
end 


