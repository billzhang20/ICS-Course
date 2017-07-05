def ring (&block)
  if Time.new.hour <= 0
    x = Time.new.hour
  else
    x = Time.new.hour - 12
  end

  puts(x)
  x.times do
    block.call
  end

end

ring do
  puts("DONG!")
end
