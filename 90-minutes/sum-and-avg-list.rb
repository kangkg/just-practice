# sum and avgs from a list, but only the odd values from said list
# sum_and_avg([1,2,3,4]) should return: {sum: 4, avg: 2}

# done in <5 min

def sum_and_avg(given_array)
  counter = 0
  sum = 0
  avg = 0
  until counter >= given_array.length
    if (counter % 2 == 0)
      sum += given_array[counter]
    end
    counter += 1
  end
  avg = sum/(counter/2).to_f
  puts "Sum is: #{sum}"
  puts "Avg is: #{avg}"
end

sum_and_avg([1,2,3,4,5]) #correct
