# array sort
puts("Enter word:")
user_choice = gets.chomp
u_list = []
while user_choice != ""
  u_list.push(user_choice)
  puts("Enter word:")
  user_choice = gets.chomp
end

sorted_list = u_list.sort

sorted_list.each do |item|
  puts(item)
end
