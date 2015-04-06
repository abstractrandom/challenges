class Student

  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}"
  end

  def favorite_number
    7
  end

end

david = Student.new
david.first_name = "David"
david.introduction('Katrina')
puts "#{david.first_name}'s favorite number is #{david.favorite_number}."