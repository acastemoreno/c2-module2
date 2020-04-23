def read_csv
  File.open("grades.csv", "r") do |file|
    file
      .readlines
      .drop(1)
      .map {|line| line.split(/[\,\s]+/)}
      .map {|array| [array[1].delete("\""), array[7].to_i]}
      .sort {|(_,a),(_,b)| (a. <=> b)*-1}
      .take(3)
      .map.with_index(1) {|(name, f_grade), i| puts "#{i} - #{name} with the final grade of #{f_grade}"}
  end
end

read_csv()