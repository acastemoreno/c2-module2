require 'json'

def write_json_notes
  notes = [
    {title: "Investing retro" ,text: "I wish I had invested in bitcoin when it was worth 500$"},
    {title: "Investing retro (2)" ,text: "I wish I had never stopped my bitcoin farm."},
    {title: "Investing retro (3)" ,text: "I wish I hadn't bought bitcoin at 13k, to then sell at 4k"},
    {title: "Investing retro (4)" ,text: "I wish I had sold my 8 ETH when it was at 700$ instead of 100$"},
  ]
  
  File.open("write-json-notes.json", "w") do |file|
    file.write(JSON.pretty_generate(notes)) #Multiline json format
    puts "Escrito write-json-notes.json"
  end
end

write_json_notes()