def letter_count(str)
    lowcase = /^[a-z]+$/
   string = str.split("").select do |char|
    char.match(lowcase)
   end

  string.map.with_index do |char, index|
  [char, index]
   end.to_h
end

puts letter_count("apple")
puts letter_count("Apple")