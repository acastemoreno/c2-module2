print "Show me the weight (kg): "
mass = gets.chomp.to_i
print "Show me the height (m): "
heigth = gets.chomp.to_f
bmi = mass / (heigth ** 2)

puts bmi.round(2)
