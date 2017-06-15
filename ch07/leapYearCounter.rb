# leap year counter
puts("Please enter desired starting year:")
start = gets.chomp.to_i
puts("Please enter desired ending year:")
finish = gets.chomp.to_i
puts("Here are the leap years in your desired range...")

number = start
while number <= finish
  if number%4 == 0 and number%100 != 0
    puts(number)
    number = number+1
  elsif number%400 == 0
    puts(number)
    number = number+1
  else
    number = number+1
  end
end
