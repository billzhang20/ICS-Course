$indent = 0


def logger (description, &block)
  puts(" "*$indent+ "Beginning #{description} block...")
  puts(" "*$indent+ "#{description} block finished, returning...")
  block.call
  puts
end

logger 'Outer ' do
  $indent = $indent + 2
  logger "Return 5" do
    5.times do
      puts(" "*$indent+ "5")
    end
  end

  $indent = $indent + 2
  logger "Return 6" do
    6.times do
      puts(" "*$indent+ "6")
    end
  end
end
