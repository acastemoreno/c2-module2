def anchorize(text)
  array = text.scan(/(hello )*((?:http|https|ftp|ftps|file|smb):\/\/[\w.:\/]+)( !)*/i)
  array == [] ? "" : array.map {|match| "#{match[0]}<a href=\"#{match[1]}\">#{match[1]}</a>#{match[2]}"}.join(" ")
end

p anchorize("hello http://world.com !") # Result: "hello <a href=\"http://world.com\">http://world.com</a> !""
p anchorize("hello http://world.com ! hello http://world.com !") # Result: "hello <a href=\"http://world.com\">http://world.com</a> ! hello <a href=\"http://world.com\">http://world.com</a> !""
p anchorize("hello http://world.com") # Result "hello <a href=\"http://world.com\">http://world.com</a>"
p anchorize("http://world.com !") # Result "<a href=\"http://world.com\">http://world.com </a> !"

