def shuffle user_list
  shuffled_list = []
  run_time = 0
  for x in user_list
    shuffled_list.push(x)
  end
  recursive_shuffle user_list, shuffled_list, run_time
end

def recursive_shuffle user_list, shuffled_list, run_time
  u_length = user_list.length
  s = shuffled_list.uniq
  s_length = s.length

  if s_length == u_length and run_time > 1
    return shuffled_list
  end

  #recursion steps
  u_length.times do |x|
    r1 = rand(u_length)
    shuffled_list[x-1] = user_list[r1]
  end

  run_time = run_time+1

  recursive_shuffle user_list, shuffled_list, run_time
end

# main
list = []
puts('Enter item (press end to shuffle): ')
user_input = gets.chomp
while user_input != 'end'
  list.push(user_input)
  puts('Enter item (press end to shuffle): ')
  user_input = gets.chomp
end

puts''
puts("Inputted List")
puts list
puts("")
puts("Shuffled List")
puts(shuffle list)
