# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# Calculate a Grade

# I worked on this challenge with: Regina Compton.


# Your Solution Below

#Solution 1

def get_grade(num)
  case
  when num >= 90
    return "A"
  when num >= 80
    return "B"
  when  num >= 70
    return "C"
  when num >= 60
    return "D"
  when num < 60
    return "F"
  end
end

print get_grade(75)

#Solution 2

def get_grade(num)
  if num >= 90
    puts "A"
  elsif num >= 80
    puts "B"
  else
    puts "You failed"
  end
end

print get_grade(85)