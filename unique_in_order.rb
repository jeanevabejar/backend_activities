def unique_in_order(sequence)
    prev = nil
    result = []
  
    if sequence.is_a? String
      sequence = sequence.split('')
    end
  
    sequence.each do |x|
      if x != prev
        result.push x
        prev = x
      end
    end
  
    result
  end
  