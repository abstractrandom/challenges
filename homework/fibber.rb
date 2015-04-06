require 'pry'

puts "Please enter the number of fibos you would like to see:"
quantity = gets.chomp.to_i
puts "Great, now enter how many fibos you want in each row:"
row_size = gets.chomp.to_i
nums = [0, 1]

until nums.size == quantity do
  nums << (nums[-1] + nums[-2])
end

nums.each_slice(row_size) do |line|
  puts line.map {|e| e.to_s.rjust(nums[-1].to_s.length + 1)}.join
end


# count = 0
# nums.each do |line|
#   print line.to_s.rjust(nums[-1].to_s.length + 1)
#   count += 1
#   puts if count % 5 == 0
# end



# start with your expected result, and build backward from there
# i.e. arr = [0, 1, 1, 2, 3, 5, 8 (etc.)]
#



# require 'pry'
# puts "Give me the number, and I will chop it in to bite sized fibonacci pieces!!"
#
# input = gets.to_i
# fibber = [0,1]
#
# # input -2 because you start with two numbers
# (input-2).times do
#   #fibber[-2] and fibber[-1] because you want the index positions of the second-to-last, and last numbers to be added together
#   fibber << fibber[-2] + fibber[-1]
# end
#
#   fibber.each_slice(5) do |line|
#   # take unit and make a string (the d is built in functionality for modulo to put in unit at the end of the string)
#   # %d is used to sub in a fixnum?
#   puts line.map {|unit| "%#{fibber[-1].to_s.length}d" % unit}.join(" ")
# end


# quantity = 15
#
# count = 0
# n1 = 0
# n2 = 1
# sum = 0
#
# until count == quantity do
#   sum += n1 + n2
#   count += 1
# end
#
# puts sum
