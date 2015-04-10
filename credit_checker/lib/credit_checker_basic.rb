require 'pry'

print "Enter Card Number:"
card_number = gets.chomp


# valid = false

# Your Luhn Algorithm Here
# from rightmost digit, move left and double every other digit
# if doubling = a number greater than 9, add the two digits of the numbers together

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
card_number = card_number.reverse
count = 1
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
if card_number[count]
  double_numbers = card_number[count].to_i * 2
  double_numbers = double_numbers - 9 if double_numbers > 9
  card_number[count] = double_numbers.to_s
  count += 2
end
total = card_number[0].to_i + card_number[1].to_i + card_number[2].to_i + card_number[3].to_i + card_number[4].to_i +
  card_number[5].to_i + card_number[6].to_i + card_number[7].to_i + card_number[8].to_i + card_number[9].to_i +
  card_number[10].to_i + card_number[11].to_i + card_number[12].to_i + card_number[13].to_i +
  card_number[14].to_i + card_number[15].to_i + card_number[16].to_i + card_number[17].to_i + card_number[18].to_i
if total % 10 == 0
  puts "Valid"
else
  puts "No Dice Beooootcchhh!"
end
