# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Solution 1
# A complex option! I first sorted the objects in the array, then joined the sorted objects together into a string.
#Then, I made a new array, and I "puts" the zeroth index of this array, i.e., the smallest number.

def smallest_integer(list_of_nums)
    list = list_of_nums.sort.join(' ')
    new_array = list.split(' ')
    solution = new_array[0]
    return solution.to_i
end

# Solution 2
# A simple option! The .min method identifies the smallest number in an array.

def smallest_integer(list_of_nums)
  list_of_nums.min
end

