# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# Input: three arguments – an array, min size of the array, an optional argument ("padding" – integer, string, array, etc.)
# Output: an array

# What are the steps needed to solve the problem?

# IF min_value = zero RETURN my_array
# IF min_value = length of array (array.length) RETURN my_array

# IF min_value > length of array RETURN my_array + padding


# 1. Initial Solution

# def pad!(array, min_size, value = nil) #destructive
#   if min_size == 0
#     return array
#   elsif array.length == min_size
#     return array
#   elsif array.length > min_size
#     return array
#   elsif min_size > array.length
#     num = min_size - array.length
#     num.times { array << value }
#     return array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if min_size == 0
#     return array
#   elsif array.length == min_size
#     return array
#   elsif array.length > min_size
#     return array
#   else min_size > array.length
#     new_array = Array.new
#     num = min_size - array.length
#     num.times { new_array << value }
#     return new_array
#   end
# end

# def pad(array, min_size, value = nil)
#   copy = array.dup
#   if  min_size > copy.length
#     (min_size - copy.length).times { copy << value }
#     return copy
#   else
#     return copy
#   end
# end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if  min_size > array.length
    (min_size - array.length).times { array << value }
    return array
  else
    return array
  end
end

def pad(array, min_size, value = nil)
  copy = array.dup
  return pad!(copy, min_size, value)
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps? Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

=begin
Yes, we started with the "exceptions" (i.e., when the array equals
or exceeds the minimum size). Then, we thought about strategies for
creating the "padding." The pseudo-code translated to actual code
just fine – however, it only provided the broad strokes, not the
exact details of the method.
=end

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

=begin
Our initial solution is pretty ridiculous and, not surprisingly,
did not pass the Rspec test. My pair and I went ot office hours,
and we discovered our problem: we needed to create a "clone" of
the original array – copy = array.dup. In doing this, our code
passed the test beautifully.
=end

# When you refactored, did you find any existing methods in Ruby to clean up your code? How readable is your solution? Did you and your pair choose descriptive variable names?

=begin
In refactoring, my pair and I focused on cleaning up redundancies.
For example, we consolidated three "if" statements into one: we
did so by using the "or" comparator. We included one local varaible,
which we not-so-cleverly labeled as "new_array," a varibale that
designated the newly created array for the non-destructive method.
At office hours, we also learned that our code would be more
concise if we: (1) put the "exceptions" at the end in the final
else statement, and (2) return pad! in the non-destructive
method (after having cloned the array). Now, the code stands as
a tiny little miracle.
=end

# What is the difference between destructive and non-destructive methods in your own words?

=begin
A non-destructive method protects the original identity of the
its input, whether that be an array, string, hash, etc.
A destructive method alters the original input.
Significantly, destructive and non-destructive methods must
appear always in pairs.
=end