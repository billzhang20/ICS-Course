# 99 bottles of beer on the wall
number = 99
while number != 0
  lyric_number = number.to_s
  if number > 1
    puts(lyric_number+" bottles of beer on the wall, "+lyric_number+" bottles of beer on the wall.")
    puts("Take one down and pass it around, " + lyric_number+" bottle of beer on the wall.")
    number = number - 1
  else
    puts("1 bottle of beer on the wall, 1 bottle of beer.")
    puts("Take one down and pass it around, no more bottles of beer on the wall.")
    puts("No more bottles of beer on the wall, no more bottles of beer.")
    puts("Go to the store and buy some more, 99 bottles of beer on the wall.")
    number = number - 1
  end
end
