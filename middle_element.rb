def gimme(arr)
    sorted_arr = arr.sort
    num_idx = sorted_arr[1]
    puts arr.index(num_idx)
end

gimme([2, 3, 1])
gimme([5, 10, 14])