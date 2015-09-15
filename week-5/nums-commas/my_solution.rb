# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# Input: an integer (no commas!)
# Output: a string (with commas!)

IF num does not need commas – that is, a number less than 1000 – return the number as is


# 1. Initial Solution

def separate_comma(random_num)
  if random_num.to_s.length < 4
    p random_num
  else random_num.to_s.length >= 4
    array = random_num.split('')
    p array[-4]
  end
end

separate_comma(229)







# 2. Refactored Solution




# 3. Reflection