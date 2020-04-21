PEN_EQ = 3
ARS_EQ = 40

def how_much(string)
  string
    .split("\n")
    .map do |line| 
      line.match(/(USD|PEN|ARS) ([0-9.]+)/) {|m| [m[1], Float(m[2])]}
    end
    .reject {|scan| scan.nil?}
    .inject(0) do |acc, (currency, value)|
      case currency
      when "PEN"
        acc += value/PEN_EQ
      when "ARS"
        acc += value/ARS_EQ
      else
        acc += value
      end
    end
    .round(2)
end

p how_much("Category, (Symbol) Price, Stock, Amount, Name
Sporting Goods, USD 49.99, true, 10, Football
Sporting Goods, PEN 9.99, true, 3, Baseball
Sporting Goods, ARS 29.99, false, 0, Basketball
Electronics, PEN 99.99, true, 5, iPod Touch
Electronics, USD 399.99, false, 0, iPhone 5
Electronics, PEN 199.99, true, 2, Nexus 7")


