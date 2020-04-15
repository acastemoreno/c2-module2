def sum(* numbers)
  puts numbers.inject(0){|acc, item| acc+ item}
end

sum(10, 2, 3, 4, 5, 1, 20)