# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][0][:hash]
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |num|
  if num.kind_of?(Array)
    num.map! {|x| x + 5}
  else
    num + 5
  end
end

p number_array


# Bonus:

# Solution 1
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |names|
  if names.kind_of?(Array)
      names.map! do |element|
        if element.kind_of?(Array)
          element.map! {|y| y + "ly"}
        else
          element + "ly"
        end
    end
  else
    names + "ly"
  end
end
p startup_names


# Solution 2
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!

startup_names.map! do |names|
  names + "ly"
end

p startup_names

# Reflection
# What are some general rules you can apply to nested arrays? What are some ways you can iterate over nested arrays?

=begin
It helps to think of nested arrays as layers, and each layer must be accessed as an individual element.
Thus, iterating over a nested array can require implementation of multiple inumerable methods (e.g., each, select, map)
and, of course, multiple code blocks (do ... end).
=end

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

=begin
I had not yet used .kind_of?, though I have used its "twin," .is_a?, which I believe works the same.
My pair and I also created a solution that transforms the
multidimensional array into a one-dimensional array.
To do so, we used the method .flatten, then we appended the suffix "ly" to each element in the array.
=end