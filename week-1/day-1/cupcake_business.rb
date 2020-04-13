def calculate_price

  quantity_options = {"Individual" => 1, "Six Pack" => 6, "Dozen" => 12}
  order_quantity = validate_input("How many cupcakes you want? (Individual, Six Pack, Dozen) ", quantity_options)

  bread_options = { "Vanilla" => 0.5, "Chocolate" => 0.75, "Red Velvet" => 0.85 }
  order_bread = validate_input("What kind of bread do you prefer? (Vanilla, Chocolate, Red Velvet) ", bread_options)

  frosting = { "Vanilla" => 0.6, "Oreo" => 1.1, "Mint chocolate" => 1.45}
  order_frosting = validate_input("What kind of frosting do you prefer? (Vanilla, Oreo, Mint chocolate) ", frosting)

  filling = {"Nutella" => 1, "Strawberry" => 0.55, "Peanut butter" => 0.45, "None" => 0}
  order_filling = validate_input("What kind of filling do you prefer? (Nutella, Strawberry, Peanut butter, None)", filling)

  sub_total = order_quantity * (order_bread + order_frosting + order_filling)

  case order_quantity
  when 1
    puts sub_total.round(2)
  when 6
    puts (sub_total*0.96)(2)
  when 12
    puts (sub_total*0.9)(2)
  end
end

def validate_input(message, options)
  print message
  input = gets.chomp
  result = options[input]
  if options[input] == nil 
    puts "Wrong value!"
    exit! 
  end
  return result
end

calculate_price()