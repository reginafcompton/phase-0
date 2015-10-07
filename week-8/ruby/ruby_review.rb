# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode FizzBuzz
# Input: Array of integers
# Output: Array of integers and strings
# Inspect each integer in the array (iterate over it).
#   IF the integer is divisible by 3 replace it with "fizz"
    # ELSIF the integer is divisible by 5 replace it with "buzz"
    # ELSIF the integer is divisible by 5 and 3 replace it with "buzz"
    # ELSE the integer remains unchanged

Solution FizzBuzz

def super_fizzbuzz(array)
  array.map! {|i|
    if (i % 3 == 0) && (i % 5 == 0)
      "FizzBuzz"
    elsif i % 3 == 0
      "Fizz"
    elsif i % 5 == 0
      "Buzz"
    else
      i
    end
  }
end

# Driver Code
array = [3, 5, 2, 15]
p super_fizzbuzz(array)


# Pseudocode Numbers to Words
# Input: an integer
# Output: a string (the English equivalent of the integer)
# Create two variables.
#   remainder = num % 10
#   divisible = num - (num % 10)

# Create a conditional statement the measures the variable remainder.
#   WHEN remainder is 1 puts "one"
#   WHEN remainder is 2 puts "two"

# Create a conditional statement that measures the variable divisible.
#   WHEN divisible is 2 puts "twenty"
#   WHEN divisible is 3 puts "thirty"
#   etc.

# Join remainder and division into a string.

# Solution Numbers to Words

# def num_to_words(num)
#   remainder = num % 10
#   div = num - (num % 10)

#   if num < 10
#     case num
#     when 1
#       eng = "one"
#     when 2
#       eng = "two"
#     when 3
#       eng = "three"
#     when 4
#       eng = "four"
#     when 5
#       eng = "five"
#     when 6
#       eng = "six"
#     when 7
#       eng = "seven"
#     when 8
#       eng = "eight"
#     when 9
#       eng = "nine"
#     end
#     p eng

#   elsif num < 20
#     case num
#     when 10
#       eng = "ten"
#     when 11
#       eng = "eleven"
#     when 12
#       eng = "twelve"
#     when 13
#       eng = "thirteen"
#     when 14
#       eng = "fourteen"
#     when 15
#       eng = "fifteen"
#     when 16
#       eng = "sixteen"
#     when 17
#       eng = "seventeen"
#     when 18
#       eng = "eighteen"
#     when 19
#       eng = "nineteen"
#     end
#     p eng

#   else
#     case div
#     when 20
#       a = "twenty"
#     when 30
#       a = "thirty"
#     when 40
#       a = "forty"
#     when 50
#       a = "fifty"
#     when 60
#       a = "sixty"
#     when 70
#       a = "seventy"
#     when 80
#       a = "eighty"
#     when 90
#       a = "ninety"
#     end

#     case remainder
#     when 0
#       b = ""
#     when 1
#       b = "one"
#     when 2
#       b = "two"
#     when 3
#       b = "three"
#     when 4
#       b = "four"
#     when 5
#       b = "five"
#     when 6
#       b = "six"
#     when 7
#       b = "seven"
#     when 8
#       b = "eight"
#     when 9
#       b = "nine"
#     end
#   p (a + " " + b + " ").rstrip!
#   end
# end


def num_to_words(num)
  raise "Please put an integer 1 to 99" if num <= 0 || num >= 100
  remainder = num % 10
  div = num - (num % 10)

  if num < 20 && num >= 10
    case num
    when 10 then eng = "ten"
    when 11 then eng = "eleven"
    when 12 then eng = "twelve"
    when 13 then eng = "thirteen"
    when 14 then eng = "fourteen"
    when 15 then eng = "fifteen"
    when 16 then eng = "sixteen"
    when 17 then eng = "seventeen"
    when 18 then eng = "eighteen"
    when 19 then eng = "nineteen"
    end
    p eng
  else
    case div
    when 0 then eng_a = ""
    when 20 then eng_a = "twenty"
    when 30 then eng_a = "thirty"
    when 40 then eng_a = "forty"
    when 50 then eng_a = "fifty"
    when 60 then eng_a = "sixty"
    when 70 then eng_a = "seventy"
    when 80 then eng_a = "eighty"
    when 90 then eng_a = "ninety"
    end

    case remainder
    when 0 then eng_b = ""
    when 1 then eng_b = "one"
    when 2 then eng_b = "two"
    when 3 then eng_b = "three"
    when 4 then eng_b = "four"
    when 5 then eng_b = "five"
    when 6 then eng_b = "six"
    when 7 then eng_b = "seven"
    when 8 then eng_b = "eight"
    when 9 then eng_b = "nine"
    end
  p (eng_a + " " + eng_b + " ").strip!
  end
end

#Driver Code
num_to_words(10)
num_to_words(13)
num_to_words(30)
num_to_words(46)
num_to_words(5)

# Pseudocode Reverse Words
# Input: a string
# Output: a string with each word reversed

# Put the indiviual words of the string into a collection (an array).
# Iterate over the collection, and reverse each element.
# Join together the elements in the collection into a string.

# Solution
def reverse_words(string)
  if string.empty?
    string
  else
    array = string.split(" ")
    array.map! {|x| x.reverse + " "}
    new_string = array.join.strip!
  end
end

# Driver Code
reverse_words("An apple a day keeps the docotor away")
reverse_words("")

# Reflection