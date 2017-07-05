def logger (description, &block)
  puts("Starting outer block!")
  puts("Beginning #{description} block...")
  print("#{description} block finished, returning... ")
  x = block.call
  puts(x)
  puts("Outer block finished!")
  puts
end

logger "Return 5" do
  print("5"*5)
end

logger "Return 6" do
  print("6"*6)
end
