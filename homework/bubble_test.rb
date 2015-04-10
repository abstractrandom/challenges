require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubble_class'

class BubbleTest < Minitest::Test

  def setup
    @bubble = BubbleSort.new
  end

  def test_it_accepts_numbers
    assert_equal [0, 3, 1, 5], @bubble.sort("0315")
  end

  def test_it_will_sort_two_numbers
    assert_equal [0, 1], @bubble.sort("10")
  end
end
