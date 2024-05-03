def up_array(arr)
dbnum = arr.any?{|num| num >= 10}
if dbnum or arr.empty?
    nil
else
    l = arr.length
    lastnum = arr[l-1]
    sum = lastnum + 1
    if sum >= 10 
       sum = 0 
       arr[l-1] = sum
    else
       arr[l-1] = sum
    end
    
       return arr
    
end


end


p up_array([1, 2, 3, 4, 9])
p up_array([1, 2, 3, 4, 10])
p up_array([])
p up_array([1, 2, 3, 4, 10])
p up_array([1, 2, 3, 4, 5])
