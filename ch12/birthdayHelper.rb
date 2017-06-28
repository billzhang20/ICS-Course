Dir.chdir '/Users/billzhang/Desktop/'

file_name = 'Birthdays.txt'
read_string = IO.readlines(file_name)

r_length = read_string.length

nested_array = []
r_length.times do |x|
  nested_info = read_string[x].split(",")
  nested_array.push(nested_info)
end


birthday_hash = {}
n_length = nested_array.length

n_length.times do |x|
  birthday_hash[nested_array[x][0]] = nested_array[x][1]
end

puts("Enter person's name to display their birthday (First & Last): ")
answer = gets.chomp

if birthday_hash[answer] == nil
  puts("ERROR: Specified person not in directory!")
else
  puts(answer+"'s birthday is:"+birthday_hash[answer])
end
