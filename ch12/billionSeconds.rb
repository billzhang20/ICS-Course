puts("What year were you born? ")
year = gets.chomp.to_i

puts("What month were you born? ")
month = gets.chomp.to_i

puts("What day were you born? ")
day = gets.chomp.to_i

puts("What time were you born (hr:min:sec) (input in military time)? ")
t_input = gets.chomp
t_list = t_input.split(":")
hour = t_list[0].to_i
min = t_list[1].to_i
sec = t_list[2].to_i

born = Time.gm(year, month, day, hour, min, sec)

puts("You were born: ", born)
puts
billionSec = born+1000000000
puts("One billion seconds later...", billionSec)
