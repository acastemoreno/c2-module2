require 'readline'

def write
  puts "What is your name?"
  name = Readline.readline("> ", true)
  File.open("write_name.txt", "w") do |file|
    file.write "Your name is " << name
  end
  puts "Writting your name to a file!"
end

write()