class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      @array.inject(initial_value){|acc, i| acc + yield(i) }
    else
      @array.inject(initial_value){|acc, i| acc + i }
    end
  end
end

list = MyArray.new([4, 2, 9])
puts list.sum(10) {|n| n ** 2 } # Result 111
