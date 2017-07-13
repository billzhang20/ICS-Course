class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @fruit = 0

    puts('An Orange tree has been planted!')
  end

  def one_year_passes
    puts('One year has passed')
    @fruit = 0
    @age = @age + 1
    @height = @height + 1
    if @age > 3
      grow_fruit
    end
    if @age == 10
      puts("Sorry, the tree died.")
      exit
    end
  end

  def pick_an_orange
    if @fruit == 0
      puts("Sorry, there are no oranges on the tree!")
    else
      puts("Yum! What a delicious orange!")
      @fruit = @fruit - 1
    end
  end

  def height
    return @height
  end

  def age
    return @age
  end

  def count_the_oranges
    return @fruit
  end

  private

  def grow_fruit
    @fruit = @fruit + @age
  end
end

tree = OrangeTree.new

puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
answer = gets.chomp

while answer != "Exit"
  if answer == "Grow"
    tree.one_year_passes
    puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
    answer = gets.chomp

  elsif answer == "Pick"
    tree.pick_an_orange
    puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
    answer = gets.chomp

  elsif answer == "Count"
    puts(tree.count_the_oranges)
    puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
    answer = gets.chomp

  elsif answer == "Height"
    puts(tree.height)
    puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
    answer = gets.chomp

  elsif answer == "Age"
    puts(tree.age)
    puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
    answer = gets.chomp 

  else
    puts("Invalid Input. Try again.")
    puts("What would you like to do? (Grow, Pick, Count, Height, Age, Exit)")
    answer = gets.chomp
  end
end
