# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# Solution 1
def largest_integer(list_of_nums)
  sorted_array = list_of_nums.sort.join(' ')
  new_array = sorted_array.split(' ')
  return new_array[-1].to_i
end

# Solution 2
def largest_integer(list_of_nums)
  list_of_nums.max
end