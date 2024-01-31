def is_isogram(word)
word_array = word.downcase.split("")
char_count = Set.new(word_array)
isogram_word = char_count.to_a
return isogram_word == word_array
end