class Calc

  def initialize
    @total = 0
  end

  def total #this is an instance method
    @total
  end

  def add(number=0)
    @total = @total + number
  end

end

calculator = Calc.new

puts calculator.total
calculator.add(10)
puts calculator.total

calculator2 = Calc.new

puts calculator2.total
calculator2.add(5)
puts calculator2.total
