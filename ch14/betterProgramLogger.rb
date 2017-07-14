$indent = 0


def logger (description, &block)
  puts(" "*$indent+ "Beginning #{description} block...")
  x = block.call
  print(" "*$indent+ "#{description} block finished, returning...")
  puts(x)

end

logger 'Outer ' do
  $indent = $indent + 2
  logger "Return 5" do

    " "*$indent+ "5"*5

  end

  $indent
  logger "Return 6" do

    " "*$indent+ "6"*6
  end
  $indent = 0
end
