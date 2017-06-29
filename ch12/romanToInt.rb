def romanToInt roman_numeral
  roman_string = roman_numeral.upcase
  year = 0
  if roman_string.include?('IV')
    year = year + 4
    roman_string.slice!('IV')
  end

  if roman_string.include?('IX')
    year = year + 9
    roman_string.slice!('IX')
  end

  if roman_string.include?('XL')
    year = year + 40
    roman_string.slice!('XL')
  end

  if roman_string.include?('XC')
    year = year + 90
    roman_string.slice!('XC')
  end

  if roman_string.include?('CD')
    year = year + 400
    roman_string.slice!('CD')
  end

  if roman_string.include?('CM')
    year = year + 900
    roman_string.slice!('CM')
  end

  r_length = roman_string.length
  r_length.times do |x|
    if roman_string[x] == "M"
      year = year + 1000

    elsif roman_string[x] == "D"
      year = year + 500

    elsif roman_string[x] == "C"
      year = year + 100

    elsif roman_string[x] == "L"
      year = year + 50

    elsif roman_string[x] == "X"
      year = year + 10

    elsif roman_string[x] == "V"
      year = year + 5

    elsif roman_string[x] == "I"
      year = year + 1

    else
      puts("ERROR (fatal): Invalid Input!")
      exit
    end
  end

  return year
end

# from new_roman_numeral program
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
    return(t+h+te+o)
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
    return(h+te+o)
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
    return(te+o)
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
    return(o)
  end
end

puts("Please enter desired roman numeral in all caps: ")
answer = gets.chomp
output_1 = romanToInt answer
output_2 = new_roman_numeral output_1

if answer != output_2
  puts("ERROR: Invalid Roman Numeral Input!")

else
  puts(output_1)
end
