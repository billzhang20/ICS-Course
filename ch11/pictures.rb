Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F://**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if exists?(new_name) == false
    File.rename name, new_name
  else
    puts("Found file with the same name, would you like to overwrite it? (y or n) ")
    answer = gets.chomp
    if answer == "y"
      File.rename name, new_name
      pic_number = pic_number + 1
    else
      puts("Error!")
      Exit
    end
end

puts
puts "Done!"
