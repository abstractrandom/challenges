gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'cryptographer'

class CryptoTest < MiniTest::Test
  def test_a_returns_n
    encryptor = Encryptor.new

    assert_equal "The message is n", encryptor.encrypt("a")
  end

  def test_it_will_return_an_ecrypted_word
    encryptor = Encryptor.new
    assert_equal "The message is qbt", encryptor.encrypt("dog")
  end

  def test_it_will_return_an_ecrypted_word_regardless_of_capitalization
    encryptor = Encryptor.new
    assert_equal "The message is qbt", encryptor.encrypt("DOG")
  end

  def test_it_will_return_a_phrase_with_spaces
    encryptor = Encryptor.new
    assert_equal "The message is gur qbt vf njrfbzr", encryptor.encrypt("The dog is Awesome")
  end
end
