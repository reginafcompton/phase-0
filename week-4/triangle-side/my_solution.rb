# I worked on this challenge [by myself, with: ].


# Your Solution Below

# def valid_triangle?(a, b, c)
#   if a || b || c == 0
#     puts "a side cannot be zero"
#     return false
#   end

#   if (a == b) && (b == c)
#     puts "an equilateral triangle"
#     return true
#   elsif ((a + b) > c) || ((a + c) > b) || ((b + c) > a)
#     puts "a triangle"
#     return true
#   elsif ((a * a) + (b * b)) == (c * c) || ((a * a) + (c * c)) == (b * b) || ((b * b) + (c * c)) == (a * a)
#     puts "a right triangle"
#     return true
#   else
#     return false
#   end
# end

# if (a == b) && (b == c)
#       return true
#     elsif ((a * a) + (b * b)) == (c * c) || ((a * a) + (c * c)) == (b * b) || ((b * b) + (c * c)) == (a * a)
#       return true
#     elsif a == b && (a + b) > c || a == c && (a + c) > b || b == c && (b + c) > a
#       return true
#     end

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
    return false
  end

  if ((a + b) > c) && ((a + c) > b) && ((b + c) > a)
    return true
  else
    return false
  end
end
