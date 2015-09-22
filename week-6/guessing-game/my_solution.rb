# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the Class takes an integer (the answer); the method guess takes an integer (the guess)
# Output: the method returns an evaluation of the guess (high, correct, low)
# Steps:
# Initialize the Class with an instance variable (@answer)
# Define a method "guess," which evaluates an integer as being greater than,
# less than, or equal to the "answer" integer
# Define a method that tells the user if the game is over (true or false)

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     if guess == @answer
#       @solved = true
#       p :correct
#     elsif guess > @answer
#       @solved = false
#       p :high
#     else guess < @answer
#       @solved = false
#       p :low
#     end
#   end

#   def solved?
#     if @solved == true
#       p true
#     else
#       p false
#     end
#   end
# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess == @answer
      @solved = true
      p :correct
    elsif guess > @answer
      @solved = false
      p :high
    else guess < @answer
      @solved = false
      p :low
    end
  end

  def solved?
    @solved
  end
end

game = GuessingGame.new rand(20)

game.solved?

game.guess(5)
game.guess(20)
game.solved?

game.guess(10)
game.solved?

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# When should you use instance variables? What do they do for you?

=begin
Instance variables live inside a given class, and they can be passed
through the methods of that class. For this exercise, the instance variable
@solved was significant, as it appeared in both methods: in the guess
method, it was assigned a value (true or false), and in the solved method,
it's assigned value is returned (again, either true or false).
Such variables and methods can mimic real-world behaviors, in that they
represent – in fact, perform – actions that can be imagined and
concretely understood.
=end

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

=begin
Flow control, as Chris Pine describes it, allows for "forks in the road."
The program can select one of multiple options or "roads" to travel down,
which may subsequently break into more roads and more roads and so on.
This exercise made use of some rather straightforward control flow
operations (IF and ELSE) that compared two integers (greater than, less
than, equal two). I did not find this part of the exercise particularly
difficult, though I did struggle with the instance variable @solved and
how to implement it into the two methods.
=end

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?

=begin
Symbols are more efficient: Ruby more quickly processes symbols.
Symbols are also immutable, so they appear the same throughout a single
program; they do not change. For this particular exercise, I do not
fully understand the advantage of using symbols....I suppose I could
write additional methods in the Game class that would require the user
to access the high, low, correct symbols. But, in my super simple program, I think that strings could work just as well.
=end