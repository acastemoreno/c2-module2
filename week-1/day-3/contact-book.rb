def method_name
  movies = {
    Memento: 3,
    Primer: 4,
    Ishtar: 1
  }
  
  puts "What would you like to do?
  -- Type 'add' to add a contact.
  -- Type 'update' to update a contact.
  -- Type 'display' to display all contacts.
  -- Type 'delete' to delete a contact."

  case gets.chomp
  when "add"
    print "What movie do you want to add? "
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      print "What's the rating? (Type a number 0 to 4.) "
      rating = Integer(gets.chomp)
      movies[title.to_sym] = rating
      puts "#{title} has been added with a rating of #{rating}."
    else
      puts "That movie '#{title}' already exists! Its rating is #{movies[title.to_sym]}."
    end
  when "update"
    print "What movie do you want to update? "
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      puts "What's the new rating? (Type a number 0 to 4.)"
      rating = Integer(gets.chomp)
      movies[title.to_sym] = rating
      puts "#{title} has been updated with new rating of #{rating}."
    end
  when "display"
    puts "Movies List:"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    print "What movie do you want to update? "
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  else
    puts "Wrong command"
    exit!
  end

  print movies.inspect

  movies
end

method_name()

