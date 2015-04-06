gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fibber'

class FibberTest < Minitest::Test

  def setup
    @fibber = Fibber.new
  end

  def test_it_exists
    assert @fibber
  end
end
