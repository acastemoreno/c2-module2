class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.sum{|order| order[:rice]*@menu[:rice] + order[:noodles]*@menu[:noodles] }
  end
end

restaurant = Restaurant.new({:rice => 3, :noodles => 2})
puts restaurant.cost({:rice => 1, :noodles => 1},{:rice => 2, :noodles => 2})