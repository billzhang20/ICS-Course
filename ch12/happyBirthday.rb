puts("What year were you born? ")
year = gets.chomp.to_i

puts("What month were you born? ")
month = gets.chomp.to_i

puts("What day were you born? ")
day = gets.chomp.to_i

born = Time.gm(year, month, day)
today = Time.new

count = -1
while born < today
  born = born + 31536000
  count = count + 1
end

puts
puts("You are "+"#{count}"+" years old!")
puts
puts("SPANK\n"*count)
