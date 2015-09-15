def anagram?(word_1, word_2)
  array_1 = word_1.split(//)
  array_2 = word_2.split(//)

  if array_1.sort.delete("") == array_2.sort.delete("")
    p true
  else
    p false
  end
end

anagram?("handel", "land he")