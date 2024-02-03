def disemvowel_trolls(str)
    str.split('').select { |char| char.match(/[^aeiou]/i) }.join('')
end

puts disemvowel_trolls('This website is for losers LOL!')