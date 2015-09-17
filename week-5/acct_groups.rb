# PSEUDOCODE

# INPUT: a list of people (string)
# OUTPUT: smaller lists containing the people from the original list

# define a method that accepts one argument (a list of people; a string)
# make the string into an array
# divide the array into smaller arrays
# iterate over the smaller arrays to find the person

# ask the user for their name
# return "You are in accountability group number X"

# SOLUTION 1
bobolinks_student_list = "Shunqian, Caroline, Kim, Jenna, Pamela, Jupiter, Laura, Ovi, Awilda, Celeste, Mike, Eunice, Kristie, Regina, John, Katy, Marcus, Paul, Solomon, Marcel, Aurelio, Hector, Adell, James, Matt, Michael, Peter, Ricky, Kai, Alex, Harmin, Lauren, Lauren CJ, Michawl, Richard, Julian, Ryan, Ian, Alison, Christopher, Miguel, Lorena, Morgan, Neal, David, Nathan, Landey, Farman, Sam, Armando, Celeen, Salim, Colin, Irina, Jamie, Gary, Lulia, Eric, Micahel, Rosslyn, Aji, Marvy, George, Shawn, Hana, Caitlyn, Nicholas"

# def account_groups(student_list)
#   full_array = student_list.split(", ")
#   sub_arrays = full_array.each_slice(5).to_a

#   hash = {}

#   hash[sub_arrays[0]] = 1
#   hash[sub_arrays[1]] = 2
#   hash[sub_arrays[2]] = 3
#   hash[sub_arrays[3]] = 4
#   hash[sub_arrays[4]] = 5
#   hash[sub_arrays[5]] = 6
#   hash[sub_arrays[6]] = 7
#   hash[sub_arrays[7]] = 8
#   hash[sub_arrays[8]] = 9
#   hash[sub_arrays[9]] = 10
#   hash[sub_arrays[10]] = 11
#   hash[sub_arrays[11]] = 12
#   hash[sub_arrays[12]] = 13
#   hash[sub_arrays[13]] = 14
#   p hash
# end

# def account_groups(student_list)
#   array = student_list.split(", ")
#   slice_array = array.each_slice(5).to_a

#   puts "What is your name?"
#   name = gets.capitalize.chomp

#   if slice_array[0].include?(name)
#     p "Hello, #{name}! You are in Group 1."
#   elsif slice_array[1].include?(name)
#     p "Hello, #{name}! You are in Group 2."
#   elsif slice_array[2].include?(name)
#     p "Hello, #{name}! You are in Group 3."
#   elsif slice_array[3].include?(name)
#     p "Hello, #{name}! You are in Group 4."
#   elsif slice_array[4].include?(name)
#     p "Hello, #{name}! You are in Group 5."
#   elsif slice_array[5].include?(name)
#     p "Hello, #{name}! You are in Group 6."
#   elsif slice_array[6].include?(name)
#     p "Hello, #{name}! You are in Group 7."
#   elsif slice_array[7].include?(name)
#     p "Hello, #{name}! You are in Group 8."
#   elsif slice_array[8].include?(name)
#     p "Hello, #{name}! You are in Group 9."
#   elsif slice_array[9].include?(name)
#     p "Hello, #{name}! You are in Group 10."
#   elsif slice_array[10].include?(name)
#     p "Hello, #{name}! You are in Group 11."
#   elsif slice_array[11].include?(name)
#     p "Hello, #{name}! You are in Group 12."
#   elsif slice_array[12].include?(name)
#     p "Hello, #{name}! You are in Group 13."
#   elsif slice_array[13].include?(name)
#     p "Hello, #{name}! You are in Group 14."
#   elsif slice_array[14].include?(name)
#     p "Hello, #{name}! You are in Group 15."
#   else
#     p "You are not a student."
#   end

# end

def account_groups(student_list)
  array = student_list.split(", ")
  slice_array = array.each_slice(4).to_a

  puts "What is your first name?"
  name = gets.capitalize.chomp

  if array.include?(name)
     counter = 1
        slice_array.each do |sub_array|
        if sub_array.include?(name)
          p "Hello, #{name}! You are in group " + counter.to_s + "."
        else
          counter += 1
        end
      end
  else
    puts "I am sorry, but that name is not in our records."
    puts "Please contact Dev Bootcamp for application information."
  end
end

account_groups(bobolinks_student_list)


# What was the most interesting and most difficult part of this challenge?

=begin
I enjoyed gazing at the "big picture," contemplating how this code can
functionally work in an actual context. I felt like this challenge
tested my creativity – quite different from previous challenges, in
which I often find myself fighting against the Rspec.
Admittedly, I had some difficulty working out the kinks in my code. I
went to office hours to learn how to iterate over a multidimensional
array – an integral part of my program.
=end

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

=begin
Yes. However, I find that my pseudo code only helps achieve the initial
solution, after which I tend to dramatically change the syntax and sometimes
the logic of the problem.
=end

# Was your approach for automating this task a good solution? What could have made it even better? What data structure did you decide to store the accountability groups in and why?

=begin
I think my solution is okay....just okay. I stored the class roster in a
string, given outside of the method and then passed it into the method when
called. My idea: a user could type any list, save it in a variable, and
run it through the method. Unfortunately, my method does not account for last
names or repeated names. It's also not as efficient or concise as it could be.
=end

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

=begin
I learned about the .each_slice method, which partitions an array into
several smaller arrays (the output: a multidimensional array). I also
learned the syntax for iterating over this multidimensional array,
namely how to "look inside" the individual components of each
subarray with the .include? method.
=end








