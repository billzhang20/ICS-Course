# new roman program
def new_roman_numeral numeral
  nlist = []
  while numeral > 0
    next_num = numeral/10
    place_value = numeral%10
    nlist.push(place_value)
    numeral = next_num
  end
  ordered_list = nlist.reverse
  len = ordered_list.length
  if len == 4
    t = "M"*ordered_list[0]
    if ordered_list[1] == 9
      h = "CM"
    elsif ordered_list[1] == 4
      h = "CD"
    elsif ordered_list[1] >= 5
      x = ordered_list[1] - 5
      h = "D" + "C"*x
    else
      h = "C"*ordered_list[1]
    end
    if ordered_list[2] == 9
      te = "XC"
    elsif ordered_list[2] == 4
      te = "XL"
    elsif ordered_list[2] >= 5
      z = ordered_list[2] - 5
      te = "L"+"X"*z
    else
      te = "X"*ordered_list[2]
    end
    if ordered_list[3] == 9
      o = "IX"
    elsif ordered_list[3] == 4
      o = "IV"
    elsif ordered_list[3] >= 5
      y = ordered_list[3] - 5
      o = "V" + "I"*y
    else
      o = "I"*ordered_list[3]
    end
    puts("Old Roman Numeral: "+t+h+te+o)
  elsif len == 3
    if ordered_list[0] == 9
      h = "CM"
    elsif ordered_list[0] == 4
      h = "CD"
    elsif ordered_list[0] >= 5
      x = ordered_list[0] - 5
      h = "D" + "C"*x
    else
      h = "C"*ordered_list[0]
    end
    if ordered_list[1] == 9
      te = "XC"
    elsif ordered_list[1] == 4
      te = "XL"
    elsif ordered_list[1] >= 5
      z = ordered_list[1] - 5
      te = "L"+"X"*z
    else
      te = "X"*ordered_list[1]
    end
    if ordered_list[2] == 9
      o = "IX"
    elsif ordered_list[2] == 4
      o = "IV"
    elsif ordered_list[2] >= 5
      y = ordered_list[2] - 5
      o = "V" + "I"*y
    else
      o = "I"*ordered_list[2]
    end
    puts("Old Roman Numeral: "+h+te+o)
  elsif len == 2
    if ordered_list[0] == 9
      te = "XC"
    elsif ordered_list[0] == 4
      te = "XL"
    elsif ordered_list[0] >= 5
      z = ordered_list[0] - 5
      te = "L"+"X"*z
    else
      te = "X"*ordered_list[0]
    end
    if ordered_list[1] == 9
      o = "IX"
    elsif ordered_list[1] == 4
      o = "IV"
    elsif ordered_list[1] >= 5
      y = ordered_list[1] - 5
      o = "V" + "I"*y
    else
      o = "I"*ordered_list[1]
    end
    puts("Old Roman Numeral: "+te+o)
  else
    if ordered_list[0] == 9
      o = "IX"
    elsif ordered_list[0] == 4
      o = "IV"
    elsif ordered_list[0] >= 5
      y = ordered_list[0] - 5
      o = "V" + "I"*y
    else
      o = "I"*ordered_list[0]
    end
    puts("Old Roman Numeral: "+o)
  end
end

#main
puts("Please input number (end to exit): ")
x = gets.chomp
while x != "end"
  y = x.to_i
  new_roman_numeral y
  puts("Please input number:")
  x = gets.chomp
end
