gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CalcTest < Minitest::Test

  def setup
    calc = Calculator.new
  end

  def total
    @total
  end

  def test_it_starts_with_a_total_of_zero

  end
end
