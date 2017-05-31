# bigger, better number
puts("What is your favorite number? ")
fav_num = gets.chomp
better_num = ((fav_num.to_i + 1)).to_s

puts("This number is superior to your number: "+better_num)
