# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

=begin
1.  Create an array of objects
2.  Each object should contain a student's first name, and the students test scores.
=end


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    sum = 0
    @scores.each do |x|
      sum += x
    end
    @grade = sum/@scores.length
    @grade
  end

  def letter_grade
    case @grade
      when 0..60 then "F"
      when 61..69 then "D"
      when 70..79 then "C"
      when 80..89 then "B"
      when 90..100 then "A"
    end
  end
end


def linear_search(array, name)
  array.each_with_index do |x, index|
    if x.first_name == name
      return index
    else
      return -1
    end
  end
end


# def create_arr(*students)

#     array ||= []
#     array.push(students)
#   p array[0].scores
#     p @students
#     @new_students = {}
#     @students << @new_students["first_name"] = @first_name
#     p @students[0].first_name
#     p @new_students
# end

student1 = Student.new("Alex", [100,100,100,0,100])
student2 = Student.new("Gina", [100,100,0, 70,100])
student3 = Student.new("Susan", [100,75,20,50,100])
student4 = Student.new("Bill", [90,100,100,0,100])
student5 = Student.new("Jose", [89,100,77,0,100])# nt
# p create_arr(student1, student2)
# p student1.inspect

students = [student1, student2, student3, student4, student5]

# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection
# What concepts did you review in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?

=begin
This challenge proved rather easy, once my pair and I better understood the
instructions. (We began by trying to a write method that would create a
"students" array – our solution worked, though it failed the driver code tests!)
I did practice iteration through multidimensional arrays, and I practiced
creating instances of class objects – always a good thing to review.
I found that my brain continues to confuse Ruby and JS syntax. I started keeping
a "cheat sheet" of code minutiae; I plan to study it this weekend.
=end