$indent = 0


def logger (description, &block)
  puts(" "*$indent+ "Beginning #{description} block...")
  print(" "*$indent+ "#{description} block finished, returning...")
  x = block.call
  puts(x)
  puts

end

logger 'Outer ' do
  $indent = $indent + 2
  logger "Return 5" do

    puts(" "*$indent+ "5"*5)

  end

  $indent = $indent + 2
  logger "Return 6" do

    puts(" "*$indent+ "6"*6)

  end
end
