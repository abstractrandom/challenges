class Car

  attr_accessor :color, :wheel_count

  def initialize
    @started = false
    @gas = 0
  end

  def horn
    puts "BEEEEP!!!"
  end

  def drive(distance)
    puts "I'm driving #{distance} miles."
  end

  def report_color
    puts "I am #{color}"
  end

  def start
    if @gas == 0
      puts "You're running on fumes. Fill me up cheapskate!"
    elsif @started == true
      puts "BZZT! Nice try"
    else
      @started = true
      puts "Starting up!"
    end
  end

  def kill_engine
    if @started == true
      puts "Goodbye, Dave"
    else
      puts "You have to turn me on, baby..."
    end
  end

  def check_gas_level
    puts "Gas level is #{@gas}"
  end

  def add_gas(gallons)
    @gas += gallons
  end

end

my_car = Car.new

my_car.horn
my_car.drive(12)
my_car.color = "RED!"
my_car.report_color
my_car.wheel_count = 18

puts "This sweet ride is sitting on #{my_car.wheel_count} wheels"

my_second_car = Car.new
my_second_car.wheel_count = 2

puts "This sweet ride is sitting on #{my_second_car.wheel_count} wheels"
my_second_car.check_gas_level
my_second_car.kill_engine
my_second_car.start
my_second_car.add_gas(5)
my_second_car.start
my_second_car.kill_engine
