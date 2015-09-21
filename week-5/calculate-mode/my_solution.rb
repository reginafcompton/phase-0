# Calculate the mode Pairing Challenge

# I worked on this challenge Hana.
# I spent 5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?  Array
# What is the output? Array (that contains the most recurrent item(s) of the original array)
# What are the steps needed to solve the problem?
# 1. Count how many times each element in the array occurs
        # Look for in built Ruby method for counting
        # Otherwise, we would place each unique item of the array into a new container, if its a repeat item, we would place it into an existing container.
#2. When finished with the loop, sort by most recurrent (ascending order)
#3. Access most recurrent item (if its a tie, access the list of most recurrent items as an array)

# 1. Initial Solution
# we might with the .sort depending on what's in the array (floats, strings, integer)
    # if the sort doesn't work the way we think, y-1 as a way to compare won't work
#accessing recurrent keys as a tie

# def mode(array)
#   hash = {}
#   array_sort = array.sort

#   # array_sort = [1, 1, 3, 6, 6, 7, 4, 4, 4, 4, 4]
#   #creates hash
#   array_sort.each_with_index { |x, y|
#     if x != array_sort[y-1]
#       hash[x] = 1
#     else x == array_sort[y-1]
#         hash[x] += 1
#     end
#     }
#     hash

#     #create multidimensional array and define some useful variables
#     new_array= hash.sort_by{|key,value|
#       value}
#     repeat_array = []

#     #IF there is a tie for max value print those items as a single array
#   if new_array.any?{|element|element[1] == new_array.max_by{|x|x[1]}[1]}
#     p "there is a tie!"
#     new_array.each do |small_array|
#       if small_array[1] == new_array.max_by{|x|x[1]}[1]
#         repeat_array << small_array[0]
#       end
#     end
#     p repeat_array

#     #ELSE no ties, just print the item as an array with one object
#   else
#     p "there is not tie!"
#     final_array= new_array[-1]
#     actual_final_array = []
#     actual_final_array << final_array[0]
#     p actual_final_array
#   end
# end

# mode([1, 1, 3, 6, 6, 7, 4, 4, 4, 10, 10, 10])

# array= [[7, 1], [3, 1], [6, 2], [1, 5], [4, 5]]

# 3. Refactored Solution

def mode(array)
  hash = {}
  array_sort = array.sort

  p array_sort

  array_sort.each_with_index { |value, index|
      value == array_sort[index-1] ? hash[value] += 1 : hash[value] = 1
    }

  p hash.select{|key,val| val == hash.max_by{|x|x[1]}[1]}.keys

end

mode([1, 1, 3, 7, 4, 4, 10, 10, 10])

# 4. Reflection

#Which data structure did you and your pair decide to implement and why?

=begin
We use two data structures: a hash and a multi-dimensional array.
The hash provided, firstly, a container in which we could sort the
values according to their number of occurrences. That is, the hash key
is an object in the original array, and the hash value is the number of times
that object appears. We then created a multidimensional array, which sorts
its objects according to the hash values. The final step: iterate over the
hash to determine which VALUE of the hash equals the first index of the MAX
value of the multidimensional array. The last command (.keys) returns the
value(s) of that entry in the hash.
=end

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? What issues/successes did you run into when translating your pseudocode to code?

=begin
We easily translated our original solution into pseudocode. (It helps that
my pair and I are both relatively verbal thinkers.) Nonetheless, I still find it
difficult to adequately describe Ruby concepts in plain English, especially
when you must differentiate between an array and a hash, both of which are
less precisely described as containers or collections.
=end

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

=begin
Yes! We found some excellent methods: .each_with_index, .max_by, and .keys.
=end