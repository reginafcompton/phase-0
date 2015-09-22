def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

    unless library.include?(item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end

    serving_size = library[item_to_make]
    serving_size_mod = order_quantity % serving_size

    if serving_size_mod == 0
        return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"

    elsif serving_size_mod >= 7
       p "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}. You have #{serving_size_mod} leftover ingredients. You can make #{serving_size_mod/7} more pie(s) plus #{serving_size_mod % 7} more cookies."
    elsif serving_size_mod >= 5
     p "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}. You have #{serving_size_mod} leftover ingredients. You can have #{serving_size_mod/5} more cake(s) plus #{serving_size_mod % 5} more cookies."
    else
      p "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}. You have #{serving_size_mod} leftover ingredients. You can have #{serving_size_mod/1} more cookie(s)."
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# Did you learn any new methods? What did you learn about them?
# What did you learn about accessing data in hashes?
# What concepts were solidified when working through this challenge?

=begin
Readable code matters. Otherwise simple programs can become almost
unintelligible without concise, eloquent code. Simple is sometimes better.
I learned about the .values_at method, which will return the values of
select keys in a hash. I also learned that, when iterating over a hash,
if you select just one item between the "pipes," then it will iterate
over the entire key-value pair, e.g., hash.each {|food| p food} iterates over
each key-value pair, not just the value or the key.
I feel comfortable with control flow and IF-ELSE constructions, which my
pair and I used extensively here.
=end



