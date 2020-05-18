def digital_root(n)
  resp = n.digits.reverse.sum
  resp < 10 ? resp : digital_root(resp)
end

p digital_root(16) #7
p digital_root(456) #6