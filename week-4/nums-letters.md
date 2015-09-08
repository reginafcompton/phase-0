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

<em>How does Ruby handle addition, subtraction, multiplication, and division of numbers? What is the difference between integers and floats? What is the difference between integer and float division?</em>

Ruby uses largely familiar symbols to indicate math operations:
+ (add), - (subtract), * (multiply), and / (divide).
For division, integers – numbers without decimals – and floats
– numbers with decimals – produce different results.
Namely, dividing integers results in integers, e.g., 5 % 2 equates to 2, not 2.5.


<em>What are strings? Why and when would you use them?</em>

Strings are collections of letters and/or non-letters (spaces,
numbers, symbols). Strings appear between quotes marks, e.g.,
'This is a string.' Strings have myriad uses, especially, in text-based methods, say, searching a book for specific words or finding and replacing one word with another (expression
substitution).

<em>What are local variables? Why and when would you use them?</em>

Variables hold assigned values. Variables help avoid
repetition – typing again and again and again the same value.
A local variable, however, is flexible; it's value can change.
For instance, I might first assign the value "ham" to the variable "food" (food = "ham"), then I may later change its
value to "bacon" (food = "bacon").

<em>How was this challenge? Did you get a good review of some of the basics?</em>

A great set of challenges.! I also like Chris Pine's clever
and friendly writing style.

