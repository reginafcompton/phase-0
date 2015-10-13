# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode FizzBuzz
# Input: Array of integers
# Output: Array of integers and strings
# Inspect each integer in the array (iterate over it).
#   IF the integer is divisible by 3 replace it with "fizz"
    # ELSIF the integer is divisible by 5 replace it with "buzz"
    # ELSIF the integer is divisible by 5 and 3 replace it with "buzz"
    # ELSE the integer remains unchanged

# Solution FizzBuzz

def super_fizzbuzz(array)
  array.map! {|i|
    if (i % 3 == 0) && (i % 5 == 0)
      "FizzBuzz"
    elsif i % 3 == 0
      "Fizz"
    elsif i % 5 == 0
      "Buzz"
    else
      i
    end
  }
end

# Driver Code
array = [3, 5, 2, 15]
p super_fizzbuzz(array)


# Pseudocode Numbers to Words
# Input: an integer
# Output: a string (the English equivalent of the integer)
# Create two variables.
#   remainder = num % 10
#   divisible = num - (num % 10)

# Create a conditional statement the measures the variable remainder.
#   WHEN remainder is 1 puts "one"
#   WHEN remainder is 2 puts "two"

# Create a conditional statement that measures the variable divisible.
#   WHEN divisible is 2 puts "twenty"
#   WHEN divisible is 3 puts "thirty"
#   etc.

# Join remainder and division into a string.

# Solution Numbers to Words

# def num_to_words(num)
#   remainder = num % 10
#   div = num - (num % 10)

#   if num < 10
#     case num
#     when 1
#       eng = "one"
#     when 2
#       eng = "two"
#     when 3
#       eng = "three"
#     when 4
#       eng = "four"
#     when 5
#       eng = "five"
#     when 6
#       eng = "six"
#     when 7
#       eng = "seven"
#     when 8
#       eng = "eight"
#     when 9
#       eng = "nine"
#     end
#     p eng

#   elsif num < 20
#     case num
#     when 10
#       eng = "ten"
#     when 11
#       eng = "eleven"
#     when 12
#       eng = "twelve"
#     when 13
#       eng = "thirteen"
#     when 14
#       eng = "fourteen"
#     when 15
#       eng = "fifteen"
#     when 16
#       eng = "sixteen"
#     when 17
#       eng = "seventeen"
#     when 18
#       eng = "eighteen"
#     when 19
#       eng = "nineteen"
#     end
#     p eng

#   else
#     case div
#     when 20
#       a = "twenty"
#     when 30
#       a = "thirty"
#     when 40
#       a = "forty"
#     when 50
#       a = "fifty"
#     when 60
#       a = "sixty"
#     when 70
#       a = "seventy"
#     when 80
#       a = "eighty"
#     when 90
#       a = "ninety"
#     end

#     case remainder
#     when 0
#       b = ""
#     when 1
#       b = "one"
#     when 2
#       b = "two"
#     when 3
#       b = "three"
#     when 4
#       b = "four"
#     when 5
#       b = "five"
#     when 6
#       b = "six"
#     when 7
#       b = "seven"
#     when 8
#       b = "eight"
#     when 9
#       b = "nine"
#     end
#   p (a + " " + b + " ").rstrip!
#   end
# end


def num_to_words(num)
  raise "Please put an integer 1 to 99" if num <= 0 || num >= 100
  remainder = num % 10
  div = num - (num % 10)

  if num < 20 && num >= 10
    case num
    when 10 then eng = "ten"
    when 11 then eng = "eleven"
    when 12 then eng = "twelve"
    when 13 then eng = "thirteen"
    when 14 then eng = "fourteen"
    when 15 then eng = "fifteen"
    when 16 then eng = "sixteen"
    when 17 then eng = "seventeen"
    when 18 then eng = "eighteen"
    when 19 then eng = "nineteen"
    end
    p eng
  else
    case div
    when 0 then eng_a = ""
    when 20 then eng_a = "twenty"
    when 30 then eng_a = "thirty"
    when 40 then eng_a = "forty"
    when 50 then eng_a = "fifty"
    when 60 then eng_a = "sixty"
    when 70 then eng_a = "seventy"
    when 80 then eng_a = "eighty"
    when 90 then eng_a = "ninety"
    end

    case remainder
    when 0 then eng_b = ""
    when 1 then eng_b = "one"
    when 2 then eng_b = "two"
    when 3 then eng_b = "three"
    when 4 then eng_b = "four"
    when 5 then eng_b = "five"
    when 6 then eng_b = "six"
    when 7 then eng_b = "seven"
    when 8 then eng_b = "eight"
    when 9 then eng_b = "nine"
    end
  p (eng_a + " " + eng_b + " ").strip!
  end
end

#Driver Code
num_to_words(10)
num_to_words(13)
num_to_words(30)
num_to_words(46)
num_to_words(5)

# Pseudocode Reverse Words
# Input: a string
# Output: a string with each word reversed

# Put the individual words of the string into a collection (an array).
# Iterate over the collection, and reverse each element.
# Join together the elements in the collection into a string.

# Solution
def reverse_words(string)
  if string.empty?
    string
  else
    array = string.split
    array.map! {|x| x.reverse + " "}
    p new_string = array.join.strip!
  end
end

# Driver Code
reverse_words("An apple a day keeps the doctor away")
reverse_words("")



# Pseudocode Create a Car Class
# Create a class called Car.
# Give the Car certain characteristics: model, color, distance to drive, and starting speed.
# That is, initialize the class with instance variables.
# Define a method for turning left or right.
# Define a method for checking the distance traversed.
# Define a method for stopping; this method sets the speed of the car to zero.
# Define a method that shows a play-by-play of the car's movements.


# Solution
class Car
  attr_accessor :model, :color, :pizzas, :target_distance, :travel_distance, :speed, :progress

  def initialize(model, color)
    @model = model
    @color = color
    @pizzas = []
    @target_distance = target_distance
    @travel_distance = 0.0
    @speed = 0
    @progress = []
  end

  def target(miles)
    @target_distance = miles.to_f
  end

  def drive(num)
    @travel_distance += num.to_f
    @progress << "travel #{num} miles"
  end

  def right
    p "You turned right."
    @progress << "right turn"
  end

  def left
    p "You turned left."
    @progress << "left turn"
  end

  def accelerate
    @speed += 5
    p "You accelerated 5 mph."
    @progress << "accelerate"
  end

  def decelerate
    @speed -= 5
    p "You decelerated 5 mph."
    @progress << "decelerate"
  end

  def stop
    @speed = 0
    p "You stopped."
    @progress << "stop"
  end

  def speed
    p "You are going #{@speed} MPH!"
  end

  def distance
    remaining_miles = @target_distance - @travel_distance
    if remaining_miles > 0.0
      p "You traveled #{@travel_distance}!"
      p "#{remaining_miles} miles remain."
    elsif remaining_miles == 0.0
      p "You arrived at your destination!"
    else remaining_miles < 0.0
      p "You went too far. Turn around!"
    end
  end

  def pizzas_to_deliver(pizza)
    @pizzas << pizza.to_s
  end

  def delivery
    p "Enjoy your #{@pizzas[0]}!"
    @pizzas.shift
  end
end

class Pizza
  attr_accessor :size, :toppings, :toppings

  def initialize(size, toppings, price)
    @size = size
    @price = price
    @toppings = toppings
  end

  def order
    p "Thank you for your order: a #{@size} pizza with #{@toppings}."
    p "Please pay the delivery person #{@price} dollars plus a tip."
  end

  def to_s
    "#{@size} pizza with #{@toppings} for #{@price} dollars"
  end

end


# DRIVER TESTS

driver = Car.new("Fiat", "red")
driver.target(3.0)
driver.drive(0.25)
driver.accelerate
driver.accelerate
driver.accelerate
driver.accelerate
driver.stop
driver.right
driver.drive(1.5)
driver.accelerate
driver.accelerate
driver.accelerate
driver.accelerate
driver.accelerate
driver.speed
driver.decelerate
driver.decelerate
driver.drive(0.25)
driver.stop
driver.left
driver.drive(1.4)
driver.accelerate
driver.accelerate
driver.accelerate
driver.accelerate
driver.accelerate
driver.distance

pizza1 = Pizza.new("small", "sausage", 8)
pizza2 = Pizza.new("large", "mushrooms", 15)
pizza3 = Pizza.new("medium", "peppers", 11)
driver.pizzas_to_deliver(pizza1)
driver.pizzas_to_deliver(pizza2)
driver.pizzas_to_deliver(pizza3)
driver.delivery
driver.delivery
driver.delivery



# Reflection

# What concepts did you review or learn in this challenge?
=begin
I reviewed control flow: using IF statements and also CASE statements.
I learned a new method – .strip – which removes blank "white space" at the front and back of a string.
=end


# What is still confusing to you about Ruby?
=begin
I do not know if "confusing" is the right word: I do feel that Ruby offers a lot, and I do not yet know the full gamut of possibilities.
=end


# What are you going to study to get more prepared for Phase 1?
=begin
I am building a WordDoc with lots of examples and minutiae that I cannot keep in my little head.
I am also re-reading all my notes, focusing especially on Ruby (Weeks 4-6).
I am also building a new website for fun, just to keep my CSS and HTML chops in shape.
=end