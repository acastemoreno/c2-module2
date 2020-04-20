require "readline"

def put_n(string, n)
  raise ArgumentError, "second argument must be integer" unless n.is_a? Integer
  raise ArgumentError, "second argument must be positive" unless n > 0
  n.times {puts string}
end

while true
  puts "What do you want to echo? "
  text_input = Readline.readline("> ", true)
  puts "How many times do you want to repeat it?"
  begin
    n = Integer(Readline.readline("> ", true))
    put_n(text_input, n)
  rescue => ArgumentError
    p "I don't understand how many times do you want to echo the string!"
  end
end