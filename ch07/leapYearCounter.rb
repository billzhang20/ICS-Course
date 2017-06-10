# leap year counter
puts("Please enter desired starting year:")
start = gets.chomp.to_f
puts("Please enter desired ending year:")
finish = gets.chomp.to_f
puts("Here are the leap years in your desired range...")

number = start
while number <= finish
  if number%4 == 0 and number%100 != 0
    nice_number = number.to_i
    puts(nice_number)
    number = number+1
  else
    number = number+1
  end
end
