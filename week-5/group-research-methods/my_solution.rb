# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1
def my_array_finding_method(source, thing_to_find)
  solution_array = []
  source.select {|x| solution_array << x if x.to_s.include?(thing_to_find)}
  p solution_array
end

def my_hash_finding_method(source, thing_to_find)
  p source.select {|k, v| v == thing_to_find}.keys
end

my_array_finding_method(i_want_pets, "a")
my_hash_finding_method(my_family_pets_ages, 3)

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  p source.map! {|x|
    if x.is_a? Integer
      x + thing_to_modify
    else x
    end }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|k, v| source[k] = v + thing_to_modify}
  p source
end

my_array_modification_method!(i_want_pets, 1)
my_hash_modification_method!(my_family_pets_ages, 2)

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

my_array_sorting_method(i_want_pets)
my_hash_sorting_method(my_family_pets_ages)

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
  source.select!{|x| x unless x.to_s.include?(thing_to_delete)}
  p source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.select!{|k, v| k unless k == thing_to_delete}
  p source
end

my_array_deletion_method!(i_want_pets, "a")
my_hash_deletion_method!(my_family_pets_ages, "Evi")


# Person 5
def my_array_splitting_method(source)
  integer_array = []
  string_array = []
  source.each {|x| if x.is_a? String
      string_array << x
    else
      integer_array << x
    end }
  solution_array = []
  solution_array.push(integer_array).push(string_array)
  p solution_array
end

def my_hash_splitting_method(source, age)
  p source.partition {|k, v| v <= 4 }
end

my_array_splitting_method(i_want_pets)
my_hash_splitting_method(my_family_pets_ages, 4)


# Reflect!
# What did you learn about researching and explaining your research to others?

=begin
I enjoyed completing the problems on my own, then checking them against
the solutions given by my peers. (Admittedly, I did these exercises at
the end of the week, so I felt significantly more comfortable with
innumerable methods than I did, say, on Monday.) I did not learn a great
deal about "how to research" for my peers; I think learning of that nature comes with writing blog posts and pairing.
Nonetheless, I did learn from my group, simply by looking at their solutions.
=end