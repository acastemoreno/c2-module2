def rgb_detector(pixels)
  pixels.flatten(1).count do |(red, green, blue)|
    (red > 100) and (green < red / 4.0) and (blue < red / 4)
  end
end

sample = [[[ 65, 67, 23], [234,176, 0], [143, 0, 0]],
[[255, 30, 51], [156, 41, 38], [ 3,243,176]],
[[255,255,255], [ 0, 0, 0], [133, 28, 13]],
[[ 26, 43,255], [ 48, 2, 2], [ 57, 89,202]]]

puts rgb_detector(sample)
#Result: 3