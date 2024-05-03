def reverse_alternate(str)
 string = str.split(" ")
 arrstr = string.map.with_index do |char,index|
  if index.odd?
    char.reverse
  else
    char
  end
 end

 return arrstr.join(" ") 
end

p reverse_alternate("hello world and universe")
p reverse_alternate("Did it work?")
p reverse_alternate("hello     world")
