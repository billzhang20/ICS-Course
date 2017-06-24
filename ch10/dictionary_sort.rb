def sort some_array
  capitalized_list = []
  # keeps track of capitalized words in a list
  (some_array.length).times do |x|
    if some_array[x-1] != some_array[x-1].downcase
      capitalized_list.push(some_array[x-1].downcase)
    end
  end

  # modifies user_inputted list into all lower case
  (some_array.length).times do |x|
    some_array[x-1] = some_array[x-1].downcase
  end

  recursive_sort some_array, [], capitalized_list
end

def recursive_sort unsorted_array, sorted_array, capitalized_list
  # base case
  if unsorted_array.length == 0
    for x in capitalized_list
      if sorted_array.include? (x) # finds capitalized word in the sorted list
        position = sorted_array.index(x) # finds the index position of the capitalized word
        sorted_array[position] = sorted_array[position].capitalize # capitalizes the word
      end
    end
    return sorted_array
  end

  smallest_word = unsorted_array.min # finds the smallest word in the array
  unsorted_array.delete(smallest_word)
  sorted_array.push(smallest_word)


  recursive_sort unsorted_array, sorted_array, capitalized_list
end

list = ['chicken', "Apple", "acorn", "Z", "zenith", "Bill"]

puts(sort list)
