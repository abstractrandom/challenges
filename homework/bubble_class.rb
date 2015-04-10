class BubbleSort

  def sort(numbers)
    staged_nums = numbers.chars.map(&:to_i)
    switch_count = 0
    total_switch_count = 0
    switch = true
    while switch
      switch = false
      staged_nums.map.with_index do |number, index|
        if number[index] > number[index + 1]
          number[index], number[index + 1] = number[index +1], number[index]
          switch = true
        end
      end
      total_switch_count += 1
      switch_count += 1
      puts "There were #{switch_count} switches performed this pass"
      switch_count = 0
      sorted_nums = staged_nums.join(" ")
    end
    puts "Your sorted number is : #{sorted_nums}\n It took #{total_switch_count} switches to get there."
  end
end

bubble = BubbleSort.new
bubble.sort("043618")


