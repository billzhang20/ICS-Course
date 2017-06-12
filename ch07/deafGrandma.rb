#normal angry grandma
puts("Hello, talk to Grandma!")
user_input = gets.chomp
while user_input != "BYE"
  if user_input == user_input.upcase
    year = rand(21)
    actual_year = (1930+year).to_s
    puts("NO, NOT SINCE "+actual_year+"!")
    user_input = gets.chomp
  else
    puts("HUH?! SPEAK UP SONNY!")
    user_input = gets.chomp
  end
end
puts("Goodbye")
