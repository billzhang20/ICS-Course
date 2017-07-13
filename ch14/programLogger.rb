def logger (description, &block)
  puts("Starting #{description} block...")
  x = block.call
  print("#{description} block finished, returning... ")
  puts(x)
end


logger "Outer" do
  logger "Return 5" do
    "5"*5
  end

  logger "Return 6" do
    "6"*6
  end
end
