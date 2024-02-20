

def encode(str)
    str.gsub(/[aeiou]/i, "a"=>"1", "e"=>"2", "i"=>"3", "o"=>"4", "u"=>"5")
end

def decode(str)
    str.gsub(/[12345]/i, "1"=>"a", "2"=>"e", "3"=>"i", "4"=>"o", "5"=>"u")
    
end

puts encode("hello")
puts decode("h2ll4")