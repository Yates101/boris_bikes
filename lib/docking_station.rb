class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes left' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end

class Bike
  def working?
    true
  end
end
