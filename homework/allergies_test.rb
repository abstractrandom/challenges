gem 'minitest'
require 'minitest/autorun'
require_relative 'allergies'

class AllergiesTest < Minitest::Test

  def test_that_no_allergies_equals_zero
    allergies = Allergies.new
    assert_equal "none", allergies.find_allergies(0)
  end

  def test_that_eggs_will_return_a_value_of_1
    allergies = Allergies.new
    assert_equal "eggs", allergies.find_allergies(1)
  end

  def test_that_peanuts_will_return_a_value_of_2
    allergies = Allergies.new
    assert_equal "peanuts", allergies.find_allergies(2)
  end

end
