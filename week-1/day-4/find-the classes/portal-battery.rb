class PortalBattery
  def initialize(capacity:)
    @initial_capacity = capacity
    @capacity = capacity
  end

  def charge(electronic)
    if electronic[:capacity].nil? || electronic[:capacity] == 0
      puts "Electronic couldn't charge"
      return nil
    end

    if @capacity < electronic[:capacity]
      puts "Electronic couldn't charge, not enough energy"
      return nil
    else
      puts "Electronic charged!"
      @capacity -= electronic[:capacity]
    end

  end

  def full_charge!()
    @capacity = @initial_capacity
  end
end

battery = PortalBattery.new(capacity: 20000)
battery.charge({type: "phone", capacity: 4300})
battery.charge({type: "phone", capacity: 5300})
battery.charge({type: "phone", capacity: 2300})
battery.charge({type: "phone", capacity: 3000})
battery.charge({type: "phone", capacity: 2300})
battery.charge({type: "phone", capacity: 2300})
battery.charge({type: "phone", capacity: 5300})
battery.full_charge!()
battery.charge({type: "phone", capacity: 4300})
battery.charge({type: "phone", capacity: 4300})