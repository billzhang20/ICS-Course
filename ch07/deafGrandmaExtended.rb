# angry grandma
score = 0
while score < 3
  puts("What would you like to say to grandma? ")
  user_input = gets.chomp
  if user_input == user_input.upcase
    if user_input == "BYE"
      score = score + 1

    else
      year = rand(21)
      actual_year = (1930+year).to_s
      puts("NO, NOT SINCE "+actual_year+"!")
      score = 0
    end
  else
    puts("HUH?! SPEAK UP SONNY!")
    score = 0
  end
end
puts("Goodbye!")
