require 'pry'

print "Please enter the number of fibos you would like to see: "
quantity = gets.chomp.to_i
print "Great, now enter how many fibos you want in each row: "
row_size = gets.chomp.to_i
nums = [0, 1]

until nums.size == quantity do
  nums << nums[-1] + nums[-2]
end

nums.each_slice(row_size) do |line|
  lines = line.map do |e|
    e.to_s.rjust(nums[-1].to_s.length + 1)
  end
  puts lines.join
end
