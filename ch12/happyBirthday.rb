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


puts("What day were you born? ")
begin
  day = Integer(gets.chomp)
rescue
  puts("Invalid input!")
  exit
end

if year < 0 or month <= 0 or month > 12 or day <= 0 or day > 31
  puts("Invalid input!")
  exit
end

born = Time.gm(year, month, day)
today = Time.new

if born > today
  puts("Invalid date!")
  exit
end

count = -1
while born < today
  born = born + 31536000
  count = count + 1
end

puts
puts("You are "+"#{count}"+" years old!")
puts
puts("SPANK\n"*count)
