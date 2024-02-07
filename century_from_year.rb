def century_from_year(year)
    result = year / 100
   if year % 100 != 0
     result += 1
   end
   return result
  end
  
  
  puts century_from_year(2024) 
  puts century_from_year(1900)  
  puts century_from_year(2000) 
  