def read
  File.open("read_name.txt", "r") do |file|
    "Your name is " << file.read()
  end
end

p read()