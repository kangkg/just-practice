# write a function that removes all values from an int array which appears exactly n times and returns an array of the remaining values sorted in ascending order.
# ex: remove_dup([1,1,1,3,2], 3) => [2,3]

def remove_dup(given_array, duplicate_count)
  counter = 0
  new_array = []
  hold_info = {}
  until counter >= given_array.length 
    if hold_info[given_array[counter]].nil?
      hold_info[given_array[counter]] = 1 
    else
      hold_info[given_array[counter]] += 1
    end
    counter += 1
  end
  duplicates_array = hold_info.select{ |key, value| value == duplicate_count}
  new_array = given_array.clone
  duplicates_array.each {|key,value| new_array.delete(key)} # delete all the duplicate numbers from the array
  p new_array.sort
end

remove_dup([1,1,1,3,2,5,5,5], 3)