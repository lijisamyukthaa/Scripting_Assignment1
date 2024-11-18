# Parent class
class Vehicle
  attr_accessor :fuel_level, :mileage

  def initialize(fuel_level, mileage)
    @fuel_level = fuel_level
    @mileage = mileage
  end

  def check_fuel
    puts "Fuel level: #{@fuel_level} liters"
  end

  def calculate_mileage
    puts "Mileage: #{@mileage} miles"
  end

  def perform_maintenance
    puts "Performing maintenance on the vehicle."
  end
end

# Child class for Car
class Car < Vehicle
  attr_accessor :trunk_size

  def initialize(fuel_level, mileage, trunk_size)
    super(fuel_level, mileage) # Call to parent class initializer
    @trunk_size = trunk_size
  end

  def check_trunk
    puts "Trunk size: #{@trunk_size} cubic feet"
  end

  # Overriding the perform_maintenance method
  def perform_maintenance
    super # Call the parent class method
    puts "Additional car maintenance tasks performed."
  end
end

# Child class for Truck
class Truck < Vehicle
  attr_accessor :load_capacity

  def initialize(fuel_level, mileage, load_capacity)
    super(fuel_level, mileage)
    @load_capacity = load_capacity
  end

  def check_load_capacity
    puts "Load capacity: #{@load_capacity} tons"
  end
end

# Child class for Motorcycle
class Motorcycle < Vehicle
  def perform_maintenance
    puts "Performing motorcycle-specific maintenance."
  end
end

# Example usage
car = Car.new(50, 25000, 15)
car.check_fuel
car.calculate_mileage
car.check_trunk
car.perform_maintenance

truck = Truck.new(80, 50000, 10)
truck.check_fuel
truck.check_load_capacity

motorcycle = Motorcycle.new(20, 15000)
motorcycle.perform_maintenance
