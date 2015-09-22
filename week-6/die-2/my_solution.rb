# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array
# Output: A class that creates a "die" with the items of the array as its sides
# Steps:
# Initialize the class with a @labels instance variable.
# The die must have at least one side (the array cannot be empty)
# Create a method that displays the number of sides
# Create a method that

# Initial Solution

class Die
  def initialize(labels)
    if labels.length > 0
      @labels = labels
      p "Die created. Let's play, friend."
    else
      raise ArgumentError
    end
  end

  def sides
    return @labels.length
  end

  def roll
    max = @labels.length
    return @labels[rand(max)]
  end
end

game = Die.new([1, 2, 5, "t", 9, "cat", 20])

p game.sides

p game.roll
p game.roll
p game.roll


# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# What does this exercise teach you about making code that is easily changeable or modifiable?
# What new methods did you learn when working on this challenge, if any?
# What concepts about classes were you able to solidify in this challenge?

=begin
In this exercise, I had to think about how to randomly select from an array.
My solution: access an element in the array with an index number. Okay, but how?
Randomize the index number. I thus learned about
the rand(max) method, which selects a number that is greater than or
equal to 0 and less than max. I defined a local variable (max) and assigned
it to the value @labels.length. It works beautifully, and I need not worry
about converting strings or integers, since the access point is the index number.

I feel more comfortable with classes and the randomize method, though I
understand that this exercise only skims the surface of these concepts.
=end