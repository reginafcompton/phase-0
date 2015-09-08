puts 'Tell me. Your first name?'
first_name = gets.chomp

puts 'And. Your middle name?'
middle_name = gets.chomp

puts 'Lastly. Your last name?'
last_name = gets.chomp

puts 'So, your full name is ' + first_name + middle_name + last_name + ', right?'


puts 'What is your favorite number?'
num = gets.chomp

puts 'Do you not prefer ' + (num.to_i + 5).to_s + ', instead?'

=begin
How do you define a local variable?

A local variable is defined when you, first, create a variable
(say, "name"), and then, assign a value to the variable.
Example: name = "Bobby Joe"

How do you define a method?

Methods, as Chris Pine writes, are "things that do stuff."
A method is defined with the opening ```def```, a
method name, and finally, an ```end```. The content
between the ```def``` and the ```end``` tell the method how to
behave.

What is the difference between a local variable and a method?

A local variable is an object (string, integer, float...) with
an assigned name. The variable stores information. However,
the variable can change; new information can be assigned to it.

A method, on the other hand, actively does something with
information, especially that info stored in variables. For
instance, my variable (name = "Johnny") may perform a method (
.reverse), resulting in "ynnhoJ."

How do you run a ruby program from the command line? How do you run an RSpec file from the command line?

To run a ruby program, type ```ruby file-name.rb```.
To run a Rspec file (which checks the functionality of your
code), type ```rspec spec-file-name.rb```.

What was confusing about this material? What made sense?

I had some difficulty with running an Rspec file. At first,
I tried to run the "my-solutions" file, but with a .spec file
name. I also find the terminology and conceptual defintions
a lot to take in. Study, study, study, study I suppose.

=end

require "address/my_solution"

require "define-method/my_solution"