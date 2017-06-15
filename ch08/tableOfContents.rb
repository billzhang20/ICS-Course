# table of contents revisited

toc = [["Chapter 1: Getting Started".ljust(20), "page 1".rjust(20)],
   ["Chapter 2: Numbers".ljust(20), "page 9".rjust(26)], ["Chapter 3: Letters".ljust(20), "page 13".rjust(27)]]
puts("Table of Contents".center(40))
sorted_list = toc.sort
sorted_list.each do |x, y|
  puts(x+y)
end
