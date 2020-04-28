def anchorize(text)
  array = text.scan(/(hello )*((?:http|https|ftp|ftps|file|smb):\/\/[\w.:\/]+)( !)*/i)
  array == [] ? "" : array.map {|match| "#{match[0]}<a href=\"#{match[1]}\">#{match[1]}</a>#{match[2]}"}.join(" ")
end