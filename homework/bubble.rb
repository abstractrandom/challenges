require 'pry'

sequence = [4, 3, 5, 0, 1]
swaps = 0
passes = 0
swaps_per_pass = 0
swapped = true
while swapped
  swapped = false
  passes += 1
  0.upto(sequence.size-2) do |i|
    if sequence[i] > sequence[i+1]
      sequence[i], sequence[i+1] = sequence[i+1], sequence[i]
      swapped = true
      swaps += 1
      swaps_per_pass +=1
    end
  end
  puts "Swaps for pass #{passes} = #{swaps_per_pass}"
  swaps_per_pass = 0
  result = sequence.join(" ")
end

puts "Final result: #{result}"
puts "Passes: #{passes}"
puts "Swaps: #{swaps}"

# class BubbleSort
#
#   def initialize(numbers)
# end
