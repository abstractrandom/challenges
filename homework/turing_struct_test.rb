require 'minitest/autorun'
require 'minitest/pride'
require_relative 'turing_struct'

class TuringStructTest < Minitest::Test

  def test_it_is_a_struct
    turing_test = TuringStruct.new({hash: value})
      assert turing_test
  end

end
