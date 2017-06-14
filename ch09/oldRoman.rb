# old roman program
def old_roman_numeral string_number
  len = string_number.length
  nlist = []
  if len == 4
    thousands = string_number.slice(0,1)
    nlist.push(thousands)
    hundreds = string_number.slice(1,1)
    nlist.push(hundreds)
    tens = string_number.slice(2,1)
    nlist.push(tens)
    ones = string_number.slice(3,1)
    nlist.push(ones)
    t = "M"*nlist[0].to_i
    if nlist[1].to_i >= 5
      x = nlist[1].to_i - 5
      h = "D" + "C"*x
    else
      h = "C"*nlist[1].to_i
    end
    if nlist[2].to_i >= 5
      z = nlist[2].to_i - 5
      te = "L"+"X"*z
    else
      te = "X"*nlist[2].to_i
    end
    if nlist[3].to_i >= 5
      y = nlist[3].to_i - 5
      o = "V" + "I"*y
    else
      o = "I"*nlist[3].to_i
    end
    puts("Old Roman Numeral: "+t+h+te+o)
  elsif len == 3
    hundreds = string_number.slice(0,1)
    nlist.push(hundreds)
    tens = string_number.slice(1,1)
    nlist.push(tens)
    ones = string_number.slice(2,1)
    nlist.push(ones)
    if nlist[0].to_i >= 5
      x = nlist[0].to_i - 5
      h = "D" + "C"*x
    else
      h = "C"*nlist[0].to_i
    end
    if nlist[1].to_i >= 5
      z = nlist[1].to_i - 5
      te = "L"+"X"*z
    else
      te = "X"*nlist[1].to_i
    end
    if nlist[2].to_i >= 5
      y = nlist[2].to_i - 5
      o = "V" + "I"*y
    else
      o = "I"*nlist[2].to_i
    end
    puts("Old Roman Numeral: "+h+te+o)
  elsif len == 2
    tens = string_number.slice(0,1)
    nlist.push(tens)
    ones = string_number.slice(1,1)
    nlist.push(ones)
    if nlist[0].to_i >= 5
      z = nlist[0].to_i - 5
      te = "L"+"X"*z
    else
      te = "X"*nlist[0].to_i
    end
    if nlist[1].to_i >= 5
      y = nlist[1].to_i - 5
      o = "V" + "I"*y
    else
      o = "I"*nlist[1].to_i
    end
    puts("Old Roman Numeral: "+te+o)
  else
    ones = string_number.slice(0,1)
    nlist.push(ones)
    if nlist[0].to_i >= 5
      y = nlist[0].to_i - 5
      o = "V" + "I"*y
    else
      o = "I"*nlist[0].to_i
    end
    puts("Old Roman Numeral: "+o)
  end
end

#main
puts("Please input number (end to exit): ")
x = gets.chomp
while x != "end"
  old_roman_numeral x
  puts("Please input number:")
  x = gets.chomp
end
