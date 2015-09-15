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

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if (min_size == 0) || (array.length == min_size) || (array.length > min_size)
    return array
  else min_size > array.length
    (min_size - array.length).times { array << value }
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  if (min_size == 0) || (array.length == min_size) || (array.length > min_size)
    return array
  else min_size > array.length
    new_array = Array.new
    (min_size - array.length).times { new_array << value }
    return new_array
  end
end

# 4. Reflection