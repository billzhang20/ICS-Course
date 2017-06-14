# angry grandma
score = 0
puts("Hello, come talk to Grandma!")
while score < 3
  user_input = gets.chomp
  if user_input == user_input.upcase
    if user_input == "BYE"
      puts("NO, NOT SINCE "+actual_year+"!")
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
