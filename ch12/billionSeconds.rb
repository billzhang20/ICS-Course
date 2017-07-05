puts("What year were you born? ")
begin
  year = Integer(gets.chomp)
rescue
  puts("Invalid input!")
  exit
end

puts("What month were you born? ")
begin
  month = Integer(gets.chomp)
rescue
  puts("Invalid input!")
  exit
end

if month > 12 or month < 0 or year < 0
  puts("Invalid input!")
  exit
end

puts("What day were you born? ")
day = gets.chomp.to_i

if day > 31 or day < 0
  puts("Invalid input!")
  exit
end

puts("What time were you born (input = hr:min:sec) (input in military time)? ")
t_input = gets.chomp
t_list = t_input.split(":")
begin
  hour = Integer(t_list[0])
  min = Integer(t_list[1])
  sec = Integer(t_list[2])
rescue
  puts("Invalid input!")
  exit
end

if hour > 24 or hour < 0 or min > 60 or min < 0 or sec > 60 or sec < 0
  puts("Invalid input!")
  exit
end

born = Time.gm(year, month, day, hour, min, sec)

puts("You were born: ", born)
puts
billionSec = born+1000000000
puts("One billion seconds later...", billionSec)
