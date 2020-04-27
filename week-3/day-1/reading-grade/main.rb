require 'readline'
require 'textstat'

def run
  print "Text: "
  text = gets.chomp
  reading_grade(text)
end

def reading_grade(text)
  grade = TextStat.coleman_liau_index(text)
  puts "Grade #{grade}"
end

run()
