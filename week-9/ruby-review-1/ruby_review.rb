# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Define a Class called "PezDispenser."
#   Instantiate the class.
#   The instance variable "flavors" should allow for a number of flavors, but no more than twelve individual pieces.
# Define methods:
#   A method that returns the number of items in the container.
#   A method that removes an item from the container.
#   A method that shows the contents of the container.

# Initial Solution

class PezDispenser
  attr_accessor :flavors

  def initialize(flavors)
    if flavors.length > 12
      raise ArgumentError.new("This PezDispenser only holds 12 pieces of candy.")
    else
      @flavors = flavors
    end
  end

  def pez_count
    p flavors.length
  end

  def get_pez
    flavors.pop
  end

  def add_pez(*new_pez)
    flavors.push(*new_pez)
  end

  def see_all_pez
    p flavors
  end

end

berries = PezDispenser.new(["strawberry", "raspberry", "blueberry"])

berries.pez_count
berries.get_pez
berries.pez_count
berries.add_pez("acai berry", "mango")
berries.see_all_pez



# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


# Reflection

