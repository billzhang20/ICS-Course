#normal angry grandma
puts("What would you like to say to Grandma?")
user_input = gets.chomp
while user_input != "BYE"
  if user_input == user_input.upcase
    year = rand(21)
    actual_year = (1930+year).to_s
    puts("NO, NOT SINCE "+actual_year+"!")
    puts("What would you like to say to Grandma?")
    user_input = gets.chomp
  else
    puts("HUH?! SPEAK UP SONNY!")
    puts("What would you like to say to Grandma?")
    user_input = gets.chomp
  end
end
puts("Goodbye")
