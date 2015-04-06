class FishTank

  attr_reader :water_level

  def initialize(volume)
    @volume = volume
    @water_level = 0
  end

  def add_water(volume)
    @water_level += volume
  end

  def empty?
    @water_level == 0
  end

  def to_s
    # 10.times { "hello" }
    # [1,2,3].each { |i| i*7 }
    "A nice tank that holds #{@volume} gallons"
  end

end

tank = FishTank.new("20,000")
puts "you got a tank: #{tank}"

if tank.empty?
  puts "Whoa there partner, your tank is empty"
else
  puts "Nice work, you got some water"
end

3.times { tank.add_water(5) }

puts "tank is empty? #{tank.empty?}"

puts tank.water_level