def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  smallest_word = unsorted_array[0]
  for x in unsorted_array
    if x == smallest_word
      smallest_word = x
    elsif x[0] < smallest_word[0]
      smallest_word = x
    elsif x[0] == smallest_word[0]
      w1 = x.length
      w2 = smallest_word.length
      min_num = [w1, w2].min
      min_num.times do |z|
        if x[z] < smallest_word[z]
          smallest_word = x
        elsif x < smallest_word
          smallest_word = x
        end
      end
    end
  end

  sorted_array.push smallest_word
  unsorted_array.delete(smallest_word)

  if unsorted_array.length == 0
    puts(sorted_array)

  else
    recursive_sort unsorted_array, sorted_array
  end
end


list = ['zenith', 'race','z', 'a', 'apple', 'doggo', 'jordan', 'racecar']

sort list
