require 'json'
require "awesome_print"

def navigate_json
  File.open("navigate-json.json", "r") do |file|
    hash = JSON.parse(file.read)
    puts "Our squad is called #{hash["squadName"]}"
    puts "We are from #{hash["homeTown"]}"
    puts "Our team started back in #{hash["formed"]}"
    puts "Our members are:"
    hash["members"].each do |member|
      puts "- #{member["name"]}"
      puts "\t- Age: #{member["age"]}"
      puts "\t- Superpowers: #{spell_list_powers(member["powers"])}"
    end
  end
end

def spell_list_powers(array_powers)
  length = array_powers.length
  array_powers.each_with_index.inject("") do |acc, (power, i)| 
    if i == 0
      acc = power
    elsif i == length - 1
      acc << " and " << power
    else
      acc << ", " << power
    end
  end
end


navigate_json()