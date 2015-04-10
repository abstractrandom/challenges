require 'pry'

class CreditCheck

  def initialize(card)
    @card = card
  end

  def stage_card
    @card.chars.reverse
  end

  def double_odds
    stage_card.map.with_index do |number, index|
     index.odd? ? number.to_i * 2 : number.to_i
    end
  end

  def add_doubled_nums
    double_odds.map do |digit|
      if digit > 9
        digit - 9
      else
        digit
      end
    end
  end

  def check_card
    if add_doubled_nums.reduce(:+) % 10 == 0
      answer = "Valid"
      puts answer
    else
      answer = "No Dice!"
      puts answer
    end
    return answer
  end

end

checker = CreditCheck.new("6011797668867828")
checker.check_card
# card_number = "4929735477250543"

# valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
# if doubling = a number greater than 9, add the two digits of the numbers together
# add all resulting numbers together, and if that number modulo 10 == 0, it's good.















# staged = card_number.chars.reverse
#
# from rightmost digit, move left and double every other digit
# doubled = staged.map.with_index do |num, idx|
#   if idx.odd?
#     num = num.to_i * 2
#     num > 9 ? num = num - 9 : num = num
#   else
#     num = num
#   end
# end
#
# total = doubled.map(&:to_i).reduce(:+)
# if total % 10 == 0
#   puts "Valid"
# else
#   puts "No Dice"
# end

