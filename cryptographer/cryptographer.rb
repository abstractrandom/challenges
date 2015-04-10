require 'pry'

class Encryptor
  def encrypt(message)
    key = 13
    encrypted_word = []
    fixed_letter = message.to_s.downcase.chars
    fixed_letter.each do |message|
      if ("a".."m").include?(message)
        new_letter = find_value[message] + key
      elsif ("n".."z").include?(message)
        new_letter = find_value[message] - key
      elsif message == (" ")
        encrypted_word << message
      end
      encrypted_word << find_value.key(new_letter)
    end
    "The message is #{encrypted_word.join}"
    # encrypted_word.join
  end

  def find_value
     {
       "a" => 1,  "b" => 2,  "c" => 3,  "d" => 4,
       "e" => 5,  "f" => 6,  "g" => 7,  "h" => 8,
       "i" => 9,  "j" => 10, "k" => 11, "l" => 12,
       "m" => 13, "n" => 14, "o" => 15, "p" => 16,
       "q" => 17, "r" => 18, "s" => 19, "t" => 20,
       "u" => 21, "v" => 22, "w" => 23, "x" => 24,
       "y" => 25, "z" => 26
     }
  end
end

class Decryptor < Encryptor
  def decrypt_value
     find_value.invert
  end

  def decrypt(message)
    key = 13
    encrypted_word = []
    fixed_letter = message.to_s.downcase.chars
    fixed_letter.each do |message|
      if ("a".."m").include?(message)
        new_letter = find_value[message] + key
      elsif ("n".."z").include?(message)
        new_letter = find_value[message] - key
      elsif message == (" ")
        encrypted_word << message
      end
      encrypted_word << find_value.key(new_letter)
    end
    "The message is #{encrypted_word.join}"
  end

end


decryptor = Decryptor.new
puts decryptor.decrypt("gur qbt vf njrfbzr")
