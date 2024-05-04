def letter_count(str)
    lowcase = /^[a-z]+$/
   string = str.split("").select do |char|
    char.match(lowcase)
   end

   new_hash = Hash.new(0)
   string.map do |char| 
       new_hash[char] += 1
   end
   new_hash
end

puts letter_count("apple")
puts letter_count("Apple")