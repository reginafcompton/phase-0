# Factorial

# I worked on this challenge Nathan Park.

# create a counter
# create a loop
#   multiply that counter by one less than itself
#   decrease counter by one
# end loop when counter reaches zero
# return number

# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  else
    value = 1
    until number == 1
      value *= number
      number -= 1
    end
  return value
  end
end
