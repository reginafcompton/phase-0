# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# Solution 1
def leap_year?(year)
  if (year % 4 == 0)
    if (year % 100 == 0)
      if (year % 400 == 0)
        return true
      end
        return false
      end
      return true
    end
    return false
end

print leap_year?(2015)

# Solution 2
def leap_year?(year)
  if (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
    return true
  else
    return false
  end
end


