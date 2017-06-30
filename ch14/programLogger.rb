def logger (description, &block)
  puts("Starting outer block!")
  puts("Beginning #{description} block...")
  puts("#{description} block finished, returning...")
  block.call
  puts
end

logger "Return 5" do
  5.times do
    puts("5")
  end
end

logger "Return 6" do
  6.times do
    puts("6")
  end
end
