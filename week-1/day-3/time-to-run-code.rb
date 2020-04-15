def exec_time(proc)
  init = Time.now
  proc.call
  Time.now - init
end

puts exec_time(lambda {3**10})