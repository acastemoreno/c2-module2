def who_is_online(friends)
  response = Hash.new
  offline = []
  away = []
  online = []
  
  friends.each do |friend|
    if friend["status"] == "offline"
      offline << friend["username"]
    elsif (friend["status"] == "online") and (friend["last_activity"] > 10)
      away << friend["username"]
    else
      online << friend["username"]
    end
  end
  
  response["offline"] = offline unless offline.empty?
  response["away"] = away unless away.empty?
  response["online"] = online unless online.empty?
  
  response
  
end

friends = [{"username"=> "David", "status"=> "online", "last_activity"=> 10},
  {"username"=> "Lucy", "status"=> "offline", "last_activity"=> 22},
  {"username"=> "Bob", "status"=> "online", "last_activity"=> 104}]

puts who_is_online(friends).inspect # Result {"online"=> ["David"], "offline"=> ["Lucy"], "away"=> ["Bob"]}