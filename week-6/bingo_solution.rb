# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a number (1, 2, 3, 4, 5) and a number (1-100).
  # Assign the first number a variable - to represent an index number in an array.
  # Assign the second number a variable.

# Check each row (each nested array) for the number.
  # If the number appears in one of the rows, check the called column (index number) for the number called.
    # If the number is in the column, replace with an 'x'
    # If the number is not in the column, then call another number.

# Display a column to the console
  # "p" the row (nested array) to the console with or without an added "x"

# Display the board to the console (prettily)
  # "p" the board (multidimensional) array with the added "x"


# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @call_letter = rand(5)
#     @call_number = rand(1..100)
#   end

#   def call
#     p @call_letter
#     p @call_number
#   end

#   def check
#     case
#       when @bingo_board[0].include?(@call_number)
#         p "Possibly something in row 1?"
#         if @bingo_board[0][@call_letter] == @call_number
#           @bingo_board[0].insert(@call_letter, "X")
#           @bingo_board[0].delete(@call_number)
#           p "Yes!"
#           p @bingo_board[0]
#         else
#           p @bingo_board[0]
#           p "No. Nothing here."
#         end

#       when @bingo_board[1].include?(@call_number)
#         p "Possibly something in row 2?"
#          if @bingo_board[1][@call_letter] == @call_number
#           @bingo_board[1].insert(@call_letter, "X")
#           @bingo_board[1].delete(@call_number)
#           p "Yes!"
#           p @bingo_board[1]
#         else
#           p @bingo_board[1]
#           p "No. Nothing here."
#         end

#       when @bingo_board[2].include?(@call_number)
#          p "Possibly something in row 3?"
#          if @bingo_board[2][@call_letter] == @call_number
#           @bingo_board[2].insert(@call_letter, "X")
#           @bingo_board[2].delete(@call_number)
#           p "Yes!"
#           p @bingo_board[2]
#         else
#           p @bingo_board[2]
#           p "No. Nothing here."
#         end

#       when @bingo_board[3].include?(@call_number)
#         p "Possibly something in row 4?"
#         if @bingo_board[3][@call_letter] == @call_number
#           @bingo_board[3].insert(@call_letter, "X")
#           @bingo_board[3].delete(@call_number)
#           p "Yes!"
#           p @bingo_board[3]
#         else
#           p @bingo_board[3]
#           p "No. Nothing here."
#         end

#       when @bingo_board[4].include?(@call_number)
#         p "Possibly something in row 5?"
#         if @bingo_board[4][@call_letter] == @call_number
#           @bingo_board[4].insert(@call_letter, "X")
#           @bingo_board[4].delete(@call_number)
#           p "Yes!"
#           p @bingo_board[4]
#         else
#           p @bingo_board[4]
#           p "No. Nothing here."
#         end
#       else
#         p "Try again! Call another number and letter."
#     end
#   puts "--- printing board ----"

#   25.times { print "." }

#   puts

#   p @bingo_board[0]
#   p @bingo_board[1]
#   p @bingo_board[2]
#   p @bingo_board[3]
#   p @bingo_board[4]
#   end
# end
# Refactored Solution

class BingoBoard
  attr_reader :call_letter
  attr_reader :call_number

  def initialize(board)
    @bingo_board = board
    @call_letter = rand(5)
    @call_number = rand(1..100)
  end

  def play
    row_1 = @bingo_board[0]
    row_2 = @bingo_board[1]
    row_3 = @bingo_board[2]
    row_4 = @bingo_board[3]
    row_5 = @bingo_board[4]

    @call_letter
    @call_number

    if row_1[@call_letter] == @call_number
      row_1[@call_letter] = "X"
      p "Yeah!"
      p row_1
    elsif row_2[@call_letter] == @call_number
      row_2[@call_letter] = "X"
      p "Yeah!"
      p row_2
    elsif row_3[@call_letter] == @call_number
      row_3[@call_letter] = "X"
      p "Yeah!"
      p row_3
    elsif row_4[@call_letter] == @call_number
      row_4[@call_letter] = "X"
      p "Yeah!"
      p row_4
    else
      p "Try again. Call another letter and number."
    end

  puts "--- printing board ----"

  25.times { print "." }

  puts

  p row_1
  p row_2
  p row_3
  p row_4
  p row_5

  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

=begin
The pseudo-coding for this exercise struck me as strange,
since DBC staff provided an excellent outline to jump-start the pseudo-code. At times, however, I felt it
difficult to embellish what was already there.
=end

#What are the benefits of using a class for this challenge?

=begin
A class seems essential for this exercise! The class allows you to define instance variables, which reappear
throughout the class. I do see how this problem could work as a single method, however.
=end

# How can you access coordinates in a nested array? What methods did you use to access and modify the array?

=begin
You can access coordinates in a nested array with chains of index numbers.
For example, to get the second element (first index) or an array that sits in the first position (zeroth index) inside of an array,
you would write: array[0][1] or array.at(0).at(1).
For this exercise, I used chains of index numbers to access and, then, replace particular coordinates.
=end

#How did you determine what should be an instance variable versus a local variable?
#What do you feel is most improved in your refactored solution?

=begin
I assigned the random values to instance variables, since
I knew that those would be passed between different methods.
I created local variables that "pointed" to the rows of the bingo board, i.e., row_1 = @bingo_board[0].
I did this to simplify the code, making it less verbose.
In fact, I think adding this local variables is what most
improves my initial solution. Readability!
=end