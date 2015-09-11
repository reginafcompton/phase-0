# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

# def shortest_string(list_of_words)
#   if list_of_words == []
#     return nil
#   else
#     array = list_of_words.map { |x| x.length }
#     return index_num = array.index(array.min)
#     list_of_words.index(index_num)
#   end
# end


def shortest_string(list_of_words)
  if list_of_words == []
    return nil
  elsif list_of_words == ['']
    return ''
  elsif list_of_words.length == 1
    return list_of_words[0]
  else
    array = list_of_words.sort_by { |x| x.length }
    return array[0]
  end
end

shortest_string(['cat'])
