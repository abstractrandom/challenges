count = 0
array.each do |value|
  print value.to_s.rjust(array[-1].to_s.length + 1)
  count += 1
  puts if count % 5 == 0
end