def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
# No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one',       'two',      'three',
              'four',      'five',     'six',
              'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
              'forty',     'fifty',    'sixty',
              'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
              'fourteen',  'fifteen',  'sixteen',
              'seventeen', 'eighteen', 'nineteen']
  expanded = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12]]

  left = number
  while expanded.length > 0
    last_pair = expanded.pop
    name = last_pair[0]
    base = 10**last_pair[1]
    write = left/base
    left = left - write*base

    if write > 0
      first_term = english_number write
      num_string = num_string + first_term + ' ' + name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end


  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.
      num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is
# 'fourteen', not 'thirteen'.
# Since we took care of the digit in the
# ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      #  The "-1" is because tens_place[3] is
# 'forty', not 'thirty'.
    end
    if left > 0
# So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
    if write > 0
      num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is
# 'four', not 'three'.
    end
  #  Now we just return "num_string"...
    num_string
end
puts english_number(123123123123)
puts english_number(1000)
