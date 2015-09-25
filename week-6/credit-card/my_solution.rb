# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer of 16 digits
# Output: True or False
# Steps:

# Define a class called CreditCard
# Define an initialize method that takes one argument (an integer)
#   IF the integer has 16 characters then create an instance variable for the argument (an integer)
#   ELSE raise an ArgumentError

# Define method that transforms the integer into an array
#   This method will reverse the array and doubles every odd item in the array
#   This method creates a new array (stored in an instance variable)

# Define a method that takes the "untouched" numbers and adds those together

# Define a method that selects the odd ("doubled") items
#   IF greater than 10 split the integer into two separate characters
#   ELSE add the item

# Define a method that adds together doubled and untouched numbers.
#   IF this number divides evenly into ten, then True
#   ELSE false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

def initialize(integer)
   if integer.to_s.length == 16
      @integer = integer
   else
      raise ArgumentError
   end
end

def check_card()
  cc_array = []
  cc_array = @integer.to_s.split("").reverse.map! {|x| x.to_i}
  if (doubled(cc_array) + untouched(cc_array)) % 10 == 0
    return true
  else
    return false
  end
end

def untouched(array)
  sum = 0
  array.each_with_index do |x, index|
    if index % 2 == 0
      sum += x
    end
  end
  sum
end

def doubled(array)
  sum = 0
  new_array = array.values_at(1, 3, 5, 7, 9, 11, 13, 15).map!{|x| x * 2}.join.chars.map(&:to_i)
  new_array.map! {|y| sum += y }
  sum
end

end

card = CreditCard.new(4408041234567901)
p card.check_card

# Reflection

# What was the most difficult part of this challenge for you and your pair?

=begin
The overall logic of this problem came easy to my pair and me.
However, we admittedly did struggle with details. Perhaps, the
biggest challenge: understanding when and how to convert integers
to strings and strings to integers.
=end

# What new methods did you find to help you when you refactored?

=begin
My partner introduced me to the .join.chars method chain, which we
used when dividing the larger digits of an array into individual
characters, then rejoining them into a new array.
=end

# What concepts or learnings were you able to solidify in this challenge?

=begin
I feel more comfortable with tackling the complexities that come with
understanding the "big picture." I know that every problem differs
greatly from the last, but I do think the more and more I work at
Ruby, the more quickly I understand the logic. Also, I really
enjoyed learning about the Luhn algorithm: that's real nifty.
=end