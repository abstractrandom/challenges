states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

quit = false
until quit == true
puts "Enter query"
  input = gets.chomp

  if states.include?(input)
    state = states[input]
    capital = capitals[state]
    puts "The capital is: #{capital}"
  elsif capitals.values.include?(input)
    capital = capitals.key(input)
    state = states.key(capital)
    puts "The state is: #{state}"
  elsif input == "quit"
    quit = true
  else
    puts "This location is not being watched by BIG BROTHER yet."
  end
end


