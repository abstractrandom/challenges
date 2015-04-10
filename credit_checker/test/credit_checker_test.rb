gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/credit_checker'

class CreditTest < MiniTest::Test

  def setup
    @checker = CreditCheck.new("4929735477250543")
  end

  def test_it_can_take_in_and_set_up_a_credit_card_number
    result = ["3", "4", "5", "0", "5", "2", "7", "7", "4", "5", "3", "7", "9", "2", "9", "4"]
    assert_equal result, @checker.stage_card
  end

  def test_it_will_double_every_other_number
    result = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal result, @checker.double_odds
  end

  def test_it_will_sum_the_two_digit_doubled_numbers
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal result, @checker.add_doubled_nums
  end

  def test_it_reports_if_the_card_is_valid_or_not
    result = "Valid"
    assert_equal result, @checker.check_card
  end

end
