#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Release 1
# What are these methods doing?
# How are they modifying or returning the value of instance variables?

=begin
This class has three instance variables. @age returns the value 27. @name returns the value "Kim."
@occupation returns "cartographer." The first method (line 11) prints to the console these three values in succession.
The methods on lines  21, 30, and 39 return each individual value; these methods could be replaced with an attr reader!
The methods on lines 26, 34, and 43 allow the user to change the value of the instance variable, i.e., these methods take an argument that
then changes the instance variable.
Something else I see in this code: the "sleep" program which pauses between each method run. That's neat
=end

# Release 2
# What changed between the last release and this release?
# What was replaced?
# Is this code simpler than the last?

=begin
This release includes one significant change: in place of the method "what_is_age"
stands the attribute reader.
attr_reader :age accomplishes the same thing
as the what_is_age method – it calls an instance variable outside of the method. The code is much simpler, since an entire method has disappeared.
=end

# Release 3
# What changed between the last release and this release?
# What was replaced?
# Is this code simpler than the last?

=begin
This release includes another meaningful change: in place of the change_my_age=(new_age)
stands the attribute writer – attr_writer :age.
This attribute writer allows the user to call the .age method AND change the value of the instance variable.
Yes, the code is simplified, though it could be even less verbose.
attr_reader and attr_writer could be consolidated into attr_accessor.
=end

# Release 4

# class Profile
# # here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
#   attr_accessor :age
#   attr_accessor :name
#   attr_accessor :occupation

#   def initialize
#     @age = 27
#     @name = "Kim"
#     @occupation = "Cartographer"
#   end

#   def print_info
#     puts
#     puts "age: #{@age}"
#     puts
#     puts "name: #{@name}"
#     puts
#     puts "occupation: #{@occupation}"
#     puts
#   end

#   # This code is no longer needed.
#   # def what_is_age
#   #   @age
#   # end

#   # This code is no longer needed
#   # def change_my_age=(new_age)
#   #   @age = new_age
#   # end

#   # def what_is_name
#   #   @name
#   # end

#   # def change_my_name=(new_name)
#   #   @name = new_name
#   # end

#   # def what_is_occupation
#   #   @occupation
#   # end

#   # def change_my_occupation=(new_occupation)
#   #   @occupation = new_occupation
#   # end


# end

# instance_of_profile = Profile.new
# puts "--- printing age -----"
# sleep 0.8
# p instance_of_profile.age

# puts "--- printing name ----"
# sleep 0.8
# # p instance_of_profile.what_is_name
# p instance_of_profile.name

# puts "--- printing occupation ----"
# sleep 0.8
# # p instance_of_profile.what_is_occupation
# p instance_of_profile.occupation

# puts "--- changing profile information ----"
# 10.times do
#   print "."
#   sleep 0.1
# end

# instance_of_profile.age = 28
# # instance_of_profile.change_my_name = "Taylor"
# instance_of_profile.name = "Taylor"
# # instance_of_profile.change_my_occupation = "Rare Coins Trader"
# instance_of_profile.occupation = "Rare Coins Trader"


# puts
# puts "---- printing all profile info -----"
# sleep 0.8
# instance_of_profile.print_info

# Release 5

class NameData
  attr_accessor :name
  def initialize
    @name = "Regina"
  end
end

class Greetings

  def initialize
    @name_data = NameData.new
  end

  def hello
    p "Greetings, #{@name_data.name}. Enjoy your day, comrade."
  end
end

student = NameData.new
p student.name

greeting = Greetings.new
greeting.hello

# Reflection

# What is a reader method? What is a writer method?

# A reader method just evaluates code; it does not give the user the option to create or change the value.
# In other words, the reader method does not take a parameter.
# A writer method, on the other hand, allows the user to interact with the code and create or change the value.
# In other words, the writer method can take a parameter.
# What do the attr methods do for you?

# The attr methods simplifies code: they eliminate the need to create methods
# for each instance variable. Saves several lines of code!

# Should you always use an accessor to cover your bases? Why or Why not?

# No. An accessor can create issues during the debugging process, and perhaps more importantly, it can
# create problems for data security. (Sometimes you only
#   want to read methods, without the option of passing values into them.)

# What is confusing to you about these methods?

# It seems clear, though this may be because the examples in these releases are relatively simple.
# I imagine that deciding between reader, writer, and accessor methods can become quite ambiguous as
# the code becomes more abstract.