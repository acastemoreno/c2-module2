def assert_equal(expected, actual, method)
  if expected == actual
    puts "#{method} returned #{actual} as expected."
  else
    puts "KAPUTT! #{method} did not return #{expected} as expected, but actually returned #{actual}."
  end
end

def map(array)
result = []
for el in array do
  result << yield(el)
end
result
end

tests = [
  {expected: [2,4,6], actual: map([1,2,3]) {|el| el * 2 }},
  {expected: [1,4,9], actual: map([1,2,3]) {|el| el * el }},
  {expected: [-1,-2,-3], actual: map([1,2,3]) {|el| el * -1 }}
]

tests.each do|test| 
  assert_equal(test[:expected], test[:actual], "map(#{test[:actual]})")
end