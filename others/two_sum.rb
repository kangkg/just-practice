# Given an array of integers, find the numbers that add to up a target number- however, no numbers should be used again to sum 

# given_array = [1,2,3,4,5,7,1,2,5,2,5]
given_array = [2,3,1,1,1,2,4]
given_target = 4
# expect 1,3; 2,2

def find_integers(given_array, given_target)
  return nil if given_array.nil?
  collection_of_answers = []
  sorted_array = given_array.sort
  counter = 0
  until counter >= sorted_array.length
    p sorted_array

    inner_counter = counter + 1
    until inner_counter >= sorted_array.length
      first_num = sorted_array[counter]
      second_num = sorted_array[inner_counter]
      if first_num + second_num == given_target
        collection_of_answers << [first_num, second_num]
        sorted_array.delete_at(counter) # to remove the item from the list
        counter -= 1
        inner_counter -= 1
        sorted_array.delete_at(inner_counter)
        p sorted_array
        break
      end
      inner_counter += 1
    end
    counter += 1
  end
  collection_of_answers.sort # needs to return numerous arrays that can add up to target
end

puts "Your answer: "
p find_integers(given_array, given_target)