# Numbers to Commas Solo Challenge

# I spent 5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# Input: an integer (no commas!)
# Output: a string (with commas!)

# Make the number a string
# IF numner does not need commas – that is, the number is less than 1000 – return the number as is
# IF the number is less than 7, add one comma
# IF the number is less than 10, add two commas


# 1. Initial Solution

# def separate_comma(random_num)
#   num = random_num.to_s
#   if num.length < 4
#     p num
#   elsif num.length < 7
#     array = num.split('')
#     array.insert(-4, ",")
#     p array.join('')
#   elsif num.length < 10
#     array = num.split('')
#     array.insert(-4, ",")
#     array.insert(-8, ",")
#     p array.join('')
#   end
# end

# 2. Refactored Solution

def separate_comma(random_num)
  num = random_num.to_s
  if num.length >= 4
    array = num.split('')
    index = -4
    counter = 4
    until counter > num.length
    array.insert(index, ",")
    index -= 4
    counter += 3
    end
    p array.join('')
  else
    p num
  end
end

separate_comma(3333333333)

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider? Was your pseudocode effective in helping you build a successful initial solution?

=begin
I started this problem by considering the numbers that do not
require commas, i.e., numbers smaller than four. I determined
that such numbers can be returned as is.
I then thought about how many commas other numbers needed: numbers
with 4, 5, 6 characters require one comma, and numbers with 7,
8, 9 characters require two commas (and so on...).
I wrote my pseudo code with these conditions in mind.
I determined, at last, that I needed to access particular index
values in the number, which I turned into a string, then an array.
At the given index value, I could add a comma.
=end

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how? How did you initially iterate through the data structure? Do you feel your refactored solution is more readable than your initial solution? Why?

=begin
I actually did not add any new methods to my code. (I welcome
suggestions no where to do so!) I did look for redundancies,
however. I deleted the newly assigned variable "array"
(lines 27-33), after having realized that I could access index
numbers in a string, much like you can do in an array. I also
joined together lines of code, making for a more reader-friendly experience.
=end
