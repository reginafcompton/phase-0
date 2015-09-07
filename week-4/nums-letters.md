<em>What does puts do?</em>
"Puts" prints the output and an extra line to the console,
but it does NOT return information.

<em>What is an integer? What is a float?</em>
An integer does not have decimal points (e.g., 10, 177, 2).
A float has decimal points (e.g., 1.4, 55.99, 7.0).

<em>What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?</em>
Dividing integers only returns integers.
For example, 11 divided by 5 returns 2; it does not return 2.5.
Dividing floats returns floats.
For example, 11.0 divived by 5.0 returns 2.5.

```ruby
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
```