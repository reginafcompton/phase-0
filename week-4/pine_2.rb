def hours_in_year
  puts 24 * 365
end

def minutes_in_10
  puts ((24*60) * 365) * 10
end

def age_in_seconds(x)
  puts (((60 ** 2) * 24) * 365) * x
end

def author_age
  puts ((((1160000000 / 60)) / 60) / 24) / 365
end

hours_in_year
minutes_in_10
age_in_seconds(30)
author_age