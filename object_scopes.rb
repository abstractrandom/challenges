class PizzaOven
  def cook(crust_type = "Flat", temp = "425 degrees")
    puts "Cookin #{crust_type} pizza at #{temp}"
  end

  def temp
    "400 degrees"
  end

  def crust_type
    "New Haven Style"
  end

end

oven = PizzaOven.new
oven.cook("Sicilian", 450)

oven = PizzaOven.new
oven.cook(oven.crust_type, oven.temp)

oven = PizzaOven.new
oven.cook
