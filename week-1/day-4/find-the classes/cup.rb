class Cup
  def initialize(color, size)
    @color = color
    @size = size
    @broke = false
  end

  # Using a [bang method](http://ruby-for-beginners.rubymonstas.org/objects/bangs)
  # instead of a normal one because this would modify the Cup object
  def break!
    if @broke
      puts "Cup is already broken! calm yourself!"
    else
      @broke = true
      puts "Splat!!!"
    end
  end
end

# Note how I use a symbol here instead of a "string", here
# I'm using :white and :small as identifiers for the color and
# size.
julios_cup = Cup.new(:white, :small)
julios_cup.break! # Logs: Splat!!!
julios_cup.break! # Logs: Cup is already broken! calm yourself!