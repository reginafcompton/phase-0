# Concatenate Two Arrays

# I worked on this challenge by myself.

# Your Solution Below

# def array_concat(array_1, array_2)
#   index = 0
#   until index == array_1.length
#     full_array = array_1.map { |x| array_2 << x}
#     index += 1
#   end
#   p full_array
# end
#FAIL

# array_concat([3, 1], [2])

def array_concat(array_1, array_2)
  if array_1 == [] && array_2 == []
    return []
  end

  index = 0
  until index == array_2.length
    full_array = Array.new
    full_array = array_1 << array_2[index]
    index += 1
  end
  p full_array

end

array_concat([3, 1], [2])
