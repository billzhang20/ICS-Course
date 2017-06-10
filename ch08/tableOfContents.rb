# table of contents revisited

toc = ["Chapter 1: Getting Started -- page 1", "Chapter 2: Numbers -- page 9", "Chapter 3: Letters -- page 13"]
puts("Table of Contents".center(40))
sorted_list = toc.sort
sorted_list.each do |x|
  puts(x)
end
