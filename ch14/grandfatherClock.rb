def ring (&block)
  block.call
end

ring do
  if Time.new.hour <= 0
    x = Time.new.hour
    puts(x)
  else
    x = Time.new.hour - 12
    puts(x)
  end

  x.times do
    puts("DONG!")
  end
end
