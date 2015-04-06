class Grandma

  def play
    puts "HEY THERE!"
    count = 0
    @words = gets.chomp
    until count > 1
      evaluate
    end
  end

  def evaluate
    count = 0 if @words != "GOODBYE!"
    if @words == "GOODBYE!"
      count += 1
      count > 1 ? (puts "LATER SKATER!") : (puts "LEAVING SO SOON?")
    end
    if @words.empty?
      puts "WHAT?!"
    elsif @words == @words.upcase
      puts "NO, NOT SINCE 1946!"
    else
      puts "SPEAK UP, I CAN'T HEAR YOU!"
    end
  end

end

grandma = Grandma.new

grandma.play
