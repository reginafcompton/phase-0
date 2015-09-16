# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

def my_hash_finding_method(source, thing_to_find)

end

def my_array_finding_method(source, thing_to_find)
  new_array = source.map {|x| x.to_s} # to convert the Fixnums
  new_array.select {|x| p "#{x}" if x.include?(thing_to_find)}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort {|a, b| a.to_s <=> b.to_s}
end

# Refactored Array Method
def my_array_sorting_method(source)
  p source.sort_by {|a| a.to_s }
end

def my_hash_sorting_method(source)
  p source.sort_by {|k, v| v}
end

# Identify and describe the Ruby method(s) you implemented.

=begin
I used the .sort and .sort_by methods. The array contains both integers and
strings, so I needed to account for this. In my initial solution, I added a
comparator with .to_s converters in the block. The .to_s converts the integer,
allowing comparison of the two objects. I then refactored this solution.
I used .sort_by, a method that assumes that I want to compare two items –
hence I do not need the explicit comparator, though I do need the conversion.
The hash sorter is very similar. I used the .sort_by method, and in the block
I indicated that each item in the hash should be sorted by its value. The
.sort_by method returns an array of "array pairs."
=end

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#