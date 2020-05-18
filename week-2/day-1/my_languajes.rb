def my_languages(results)
  results.select {|_, score| score >= 60}.sort_by {|_, score| -score}.map{|language, _| language}
end

p my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65}) # ["Ruby", "Python"]
p my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})#["Dutch", "Greek", "Hindi"]
p my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20}) #[]