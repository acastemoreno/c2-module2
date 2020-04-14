# Print format required and return hash
def process_orders(people_orders)
  people_orders
    .group_by{|person, dish| dish}
    .map do |dish, people|
      puts "#{dish} -> #{people.length}"
      [dish, people.length]
    end
    .to_h
end

people_orders = {
  "julio" => "pizza",
  "diego" => "saltado",
  "andres" => "hamburguer",
  "ximena" => "ceviche",
  "felipe" => "pizza",
  "jon" => "saltado",
  "snow" => "ceviche",
  "pepe" => "fried chicken",
  "queen of dragons" => "ice cream",
  "jose" => "hamburguer",
  "jafeth" => "fried chicken"
}
process_orders(people_orders)