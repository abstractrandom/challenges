# if you don 't input anything (just hit enter) she responds with WHAT?!
# If you ask a question with any lower-case letters, she responds with SPEAK UP, KID!
# If you ask a question in all upper-case letters, she responds with NO, NOT SINCE 1946!
# The first time you say GOODBYE! she says LEAVING SO SOON?
# The second time you say GOODBYE! she says LATER, SKATER! and the program exits.

class Grandma

  def initialize
    @goodbye_count = 0
  end

  def play
    puts "HEY THERE!"
    until @goodbye_count == 2
      @words = gets.chomp
      talk_to_grandma
    end
  end

  def talk_to_grandma
    if @words != "GOODBYE!"
      @goodbye_count = 0
    end
    if @words == "GOODBYE!"
      @goodbye_count += 1
      respond_sadly if @goodbye_count == 1
      go_skating if @goodbye_count == 2
    elsif @words.empty?
      respond_to_nothing
    elsif @words.upcase == @words
      respond_to_loud_input
    else
      respond_to_soft_input
    end
  end

  def respond_to_nothing
    puts "WHAT?"
  end

  def respond_to_soft_input
    puts "SPEAK UP KID!"
  end

  def respond_to_loud_input
    puts "NO, NOT SINCE 1946!"
  end

  def respond_sadly
    puts "LEAVING SO SOON?"
  end

  def go_skating
    puts "LATER SKATER!"
  end

end

grandma = Grandma.new

grandma.play



# puts "HEY KID!"
#
# goodbye = 0
# until goodbye > 1
#   input = gets.chomp #removes extra line at the end of the user input
#
#   if input.empty?
#     puts "WHAT?"
#     goodbye = 0
#   elsif input == "GOODBYE!"
#     goodbye +=1
#     puts "LEAVING SO SOON?" if goodbye == 1
#   elsif input == input.upcase
#     puts "NO, NOT SINCE 1946!"
#     goodbye = 0
#   else
#     puts "SPEAK UP, KID!"
#     goodbye = 0
#   end
# end
#
# puts "LATER SKATER!"


# ready_to_quit = false
#
# puts "HEY KID!"
#
# count = 0
# until ready_to_quit
#   input = gets.chomp
#
#   if input.empty?
#     puts "WHAT?"
#   elsif input == "GOODBYE!"
#     if count < 1
#       puts "LEAVING SO SOON?"
#       count += 1
#     else
#       puts "LATER, SKATER!"
#       ready_to_quit = true
#     end
#   elsif input == input.upcase
#     puts "NO, NOT SINCE 1946!"
#     count = 0
#   elsif input != input.upcase
#     puts "SPEAK UP, KID!"
#     count = 0
#   end
# end


