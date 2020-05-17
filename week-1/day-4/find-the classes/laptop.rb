class Laptop
  def initialize(branch:, model:, processor:, ram:)
    @branch = branch
    @model = model
    @processor = processor
    @ram = ram
  end

  def spell
    "Laptop #{@branch} #{@model} with processor #{@processor} and #{@ram}Gb RAM"
  end
end
laptop = Laptop.new(branch: "Xiaomi", model: "tm-1801", processor: "I5-8300H", ram: 8)

puts laptop.spell()