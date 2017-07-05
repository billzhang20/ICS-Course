class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts("What do you want to set the die to?")
    x = gets.chomp.to_i
    if x > 0 and x < 7
      @number_showing  = x
    else
      puts("Invalid input!")
      exit
    end
  end
end

x = Die.new
puts("Would you like to cheat? (y/n)")
answer = gets.chomp
if answer == "y"
  x.cheat
  puts("Your die shows: ", x.showing)
else
  puts("lol bye")
end
