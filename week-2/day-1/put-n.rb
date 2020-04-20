def put_n(string, n)
  raise ArgumentError, "second argument must be integer" unless n.is_a? Integer
  raise ArgumentError, "second argument must be positive" unless n > 0
  n.times {puts string}
end

put_n("This will be printed 5 times!", 5)
# Logs
# This will be printed 5 times! 
# This will be printed 5 times! 
# This will be printed 5 times! 
# This will be printed 5 times! 
# This will be printed 5 times! 
put_n("This will be printed -1 times!", -1)