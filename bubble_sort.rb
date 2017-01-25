# Classic bubble-sort!
# The code could be further optimized. Currently O(n^2)

def bubble_sort(given_array)
  return nil if given_array.nil?
  new_array = given_array.clone
  isSorted = false
  until isSorted == true
    counter = 0
    isSorted = true
    until counter >= new_array.length - 1
      if new_array[counter] > new_array[counter + 1]
        current_number = new_array[counter] 
        next_number = new_array[counter + 1]
        return nil if !(current_number.is_a? Numeric) || !(next_number.is_a? Numeric) # random error checking
        new_array[counter] = next_number
        new_array[counter + 1] = current_number
          # puts new_array[counter].to_s + " " + new_array[counter+1].to_s
        isSorted = false
      end
      counter += 1
    end
  end
  p new_array
  new_array
end

bubble_sort([5,4,3,2,1]) # correct
bubble_sort([5,4,3,2,777,12221,111,99191,1])
bubble_sort([1,2,3,4,5])