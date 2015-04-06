data = [
    ['Frank', 33],
    ['Stacy', 15],
    ['Juan', 24],
    ['Dom', 32],
    ['Steve', 24],
    ['Jill', 24]
]

hash = Hash.new{ |hash,name| hash[name] = [] }
data.each{ |name,age| hash[age] << name}
puts hash

  # sorted = data.sort_by {|names, ages| [ages, names]}
  # puts sorted


# names.select {|ele| puts "#{ele[0]} (#{ele[1]})"}

# names = data.sort_by {|ele| ele[1]}
# names.select {|ele| puts ele[0]}

hash = Hash.new
data.each do |person, age|
  if hash[age].nil?
    hash[age] = [person]
  else
    hash[age] << person
  end
end