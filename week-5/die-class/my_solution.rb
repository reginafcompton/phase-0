# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2.5 hours on this challenge.

# 0. Pseudocode

# Input: a collection of behaviors (methods of a Ruby class)
# Output: a blueprint for ideas (a Ruby class)
# Steps:

# define a behavior that takes place every time an object is created (initialize method)
# define the parameters of this first behavior: the die must have more than 0 sides
# define the second behavior: the die can report the number of sides it has
# define the third behavior: the die can be rolled and return a random number

# Solution

class Die
  def initialize(sides)
    if sides > 6
      @sides = sides
      p "Created a die! Let's play."
    else
      raise ArgumentError
    end
  end

  def sides
    p @sides
  end

  def roll
    p 1 + rand(@sides)
  end
end

games = Die.new(19)

games.roll
games.roll
games.roll



# Reflection

=begin
What is an ArgumentError and why would you use one?

The ArgumentError tells the user that a variable has restrictions.
An Error night appear if the variable is constant in some way, e.g.,
the variable must be less than or greater than a certain number, or the
variable must match a list of predefined names.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used the Rand operator for the first time! Otherwise, I did not use
any new methods.

What is a Ruby class? Why would you use a Ruby class?

A Ruby class is a blueprint for objects or "ideas." It is from the Ruby
class that Ruby objects are created. A Ruby class brings together
newly written and related methods: for example, the methods .bark (puts
"woof!") or .sit? (if TRUE puts "Good boy") would be useful in the class
Dog. Honestly, I think learning about classes is the beginning of infinity.
I envision so many uses for this integral Ruby device.

What is the difference between a local variable and an instance variable? Where can an instance variable be used?

A local variable lives inside its method; it does not live outside
its method. It cannot leave. It never vacations.
An instance variable lives inside a class. It is preceded with an @.
Every time an instance of a class is created, so too are the class's instance variables.
In a sense, instance variables give the class's objects abilities and personality.
=end