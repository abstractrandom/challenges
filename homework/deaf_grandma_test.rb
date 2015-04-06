require 'minitest/autorun'
require 'minitest/pride'
require_relative 'deaf_grandma_two'

class GrandmaTest < Minitest::Test

  def setup
    @grandma = Grandma.new
  end

  def test_we_can_make_a_grandma
    assert @grandma
  end

  def test_grandma_responds_with_what_when_nothing_is_said
    assert_equal "WHAT?!", @grandma.tell_grandma("")
  end

  def test_grandma_responds_to_soft_talking
    assert_equal "SPEAK UP, I CAN'T HEAR YOU!", @grandma.tell_grandma("Hey there Grandma.")
  end

  def test_grandma_responds_to_loud_talking
    assert_equal "NO, NOT SINCE 1946!", @grandma.tell_grandma("HEY THERE GRANDMA!")
  end

  def test_grandma_is_sad_when_you_want_to_leave
    assert_equal "LEAVING SO SOON?", @grandma.tell_grandma("GOODBYE!")
  end


end
