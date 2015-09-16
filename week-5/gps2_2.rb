# list input: list of items and quantities
# list output: hash
# create a empty hash

# add_item input: 1 item and quantities
# add_item output: line in list
# add items and quantities

# remove input: 1 item and quantities on list
# remove output: list without 1 item and quantities
# remove items and quantities

# update input: new quantity
# update output: list with new quantities
# update quantities

# puts hash

# class Dog
#   attr_reader :name, :num_legs, :cuteness, :personality
#   def initialize(name, num_legs, cuteness, personality)
#     @name = name
#     @num_legs = num_legs
#     @cuteness = cuteness
#     @personality = personality
#   end
# end

# faye = Dog.new("faye", 4, 10, "happy")
# faye.name
# => "faye"
# faye.num_legs
# => 4

grocery_list = {}

def add_to_list(list, item, quantity)
  list[item] = quantity
end

def remove_from_list(list, item)
  list.delete(item)
end

def update_list(list, item, new_quantity)
  list[item] = new_quantity
end

def print_list(list)
  puts "Buy these!"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

#Driver Code

add_to_list(grocery_list, "lemonade", 2)
add_to_list(grocery_list, "tomatoes", 3)
add_to_list(grocery_list, "onions", 1)
add_to_list(grocery_list, "ice cream", 4)
print_list(grocery_list)

remove_from_list(grocery_list, "lemonade")
print_list(grocery_list)

update_list(grocery_list, "ice cream", 1)
print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?

=begin
Pseudocode can contain myriad details, even for the simplest of operations.
=end

# What are the tradeoffs of using Arrays and Hashes for this challenge?

=begin
Arrays give an ordered list of objects. That is, the objects appear in a
linear order, according to index numbers. This could be useful, if your grocery list needed to appear in a particular numerical order.
(Each item in the array could give the grocery item and its quantity, e.g, ["4 tomatoes", "7 carrots"]).
Hashes, however, give a list of "keys" and "values": to access each item, you refer to its key or value, not index number.
Though not ordered numerically, a hash provides an easy way to
create, update, and remove individual keys and/or values.
=end

# What does a method return? What kind of things can you pass into methods as arguments? How can you pass information between methods?

=begin
A method executes a code and returns its value, which could be a
string, integer, float, array, etc. Likewise, you can pass any number of things into a method: a string, integer, float, array, etc.
You can pass information between methods by giving their arguments the
same labels and also by assigning variable(s) that other methods
can access (e.g., "grocery_list = {}").
=end

# What concepts were solidified in this challenge, and what concepts are still confusing?

=begin
I fully understand how to assign a variable outside a method or collection of methods. If I wish to integrate this variable into my method, then I must
include a parameter for it. For example, in add_list(list, item, price), the
argument "list" may refer to a hash (or array or whatever) that is assigned outside the method itself. When I call the method add_list, I pass the name of my assigned hash (or array or whatever) into it.
My guide also explained how to define classes – an incredibly useful lesson!
I understand the fundamentals of classes, though I imagine that they can become rather complex beasts.
=end


