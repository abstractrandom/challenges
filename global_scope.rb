x = 10
puts "x is #{x}"
x += 20
puts "x is now #{x}"

def print_double_value(x)
  # defining this method makes us enter a new scope
  orig = x
  x = x * 2
  puts "double the value of #{orig} is #{x}"
  puts "inner x is now: #{x}"
end

print_double_value(x)
puts "outer x is still #{x}"

a = 4
b = 12

def combine_variables(x)
  puts "inner x is #{x}"
  puts "and outer b is #{x}"
end

combine_variables(b)

creatures = ["IndustrialRaverMonkey", "DwarvenAngel", "TeethDeer"]
hero = "Dwemthy"

def battling_technique
  ["heroically", "clumsily", "cleverly"].sample
end

creatures.each do |creature|
  puts "#{hero} battles #{creature} #{battling_technique}"
end
