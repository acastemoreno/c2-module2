require 'http'

puts HTTP.headers(:accept => "application/json").get('https://icanhazdadjoke.com').parse["joke"]