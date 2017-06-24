def sort some_array
  puts(recursive_sort some_array, [])
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end

  smallest_word = unsorted_array.min
  unsorted_array.delete(smallest_word)
  sorted_array.push(smallest_word)

  recursive_sort unsorted_array, sorted_array
end

list = ['zenith', 'race','z', 'a', 'apple', 'doggo', 'jordan', 'racecar', 'cat', 'alphabet']

sort list
