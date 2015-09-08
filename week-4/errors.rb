# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter expects the keyword "end," but does not get it.
# 5. Where is the error in the code?
# The interpreter points us to line 170, since it searched until the end of the document for the necessary "end" keyword.
# The error, in fact, is that the code needs an "end" keyword to conclude the while loop.
# 6. Why did the interpreter give you this error?
# The code should read as corrected (see above).

# --- error -------------------------------------------------------

# south_park = "Home of Cartman"

# 1. What is the line number where the error occurs?
# 37
# 2. What is the type of error message?
# Name error
# 3. What additional information does the interpreter provide about this type of error?
# The text (south_park) does not have an assigned variable, nor does it provide the name of a method. Indeed, is it a method? a variable? something else?
# 4. Where is the error in the code?
# The interpreter expects the text (south_park) to have more context.
# 5. Why did the interpreter give you this error?
# The text needs a variable assignment or a method definition. (See my variable solution above.)

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# no method error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that this is an undefined method for "cartman."
# 4. Where is the error in the code?
# "cartman()" seems to be calling a method, though this program does not define a "cartman" method above.
# 5. Why did the interpreter give you this error?
# The program does not define a method called "cartman," and hence, it becomes impossible to call such a method.

# --- error -------------------------------------------------------

#def cartmans_phrase
# puts "I'm not fat; I'm big-boned!"
#end

# cartmans_phrase

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that this code has the wrong number of arguments (1 for 0).
# 4. Where is the error in the code?
# The code itself is fine. However, the method,
# when called, gives an argument.
# 5. Why did the interpreter give you this error?
# The called method should not take an argument.
# See my solution.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
# puts offensive_message
#end

#cartman_says ("Screw you guys.")

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that this code has the
# wrong number of arguments (0 for 1).
# 4. Where is the error in the code?
# The code error occurs, not in line 88, but when we call the method.
# The method, when called, needs an argument.
# 5. Why did the interpreter give you this error?
# The called method should have an argument.
# See my solution above.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
# puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Stewie')

# 1. What is the line number where the error occurs?
# 112
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that the code does not
# have the correct number of arguments (1 for 2).
# 4. Where is the error in the code?
# The method, when called, should have two arguments.
# However, in this case, only the "lie" parameter is fulfilled.
# 5. Why did the interpreter give you this error?
# The called method needs two arguments.
# See my solution above.

# --- error -------------------------------------------------------

#"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 134
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that a String cannot be "coerced" into a Fixnum, or integer.
# 4. Where is the error in the code?
# One can multiply a string five times, but one cannot multiply the integer "string" times.
# 5. Why did the interpreter give you this error?
# The string must proceed the multiplication method. See my solution above.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 149
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that the code contains a directive to divide by zero.
# 4. Where is the error in the code?
# Ruby cannot divide by zero.
# 5. Why did the interpreter give you this error?
# Mathematically, it does not make sense (unless the answer is infinity?).

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 165
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that the file cannot be loaded.
# 4. Where is the error in the code?
# The actual file cannot load, because it does not exist.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error, because the file does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?

The division problem challenged me, since I (apparently) lack fundamental math skills!
I did not perceive dividing by zero to cause such problems.

How did you figure out what the issue with the error was?

I had to google "ruby divide by zero." I quickly
saw my mistake.

Were you able to determine why each error message happened based on the code?

Yes, though I am not quite sure that I understand the require_relative method.....

When you encounter errors in your future code, what process will you follow to help you debug?

Something very similar to this!

=end