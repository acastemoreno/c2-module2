print "Who? "
name = gets.chomp
who = name == "" ? "you" : name
puts "One for #{who}, one for me."
