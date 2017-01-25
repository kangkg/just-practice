# Write a program that takes input of N integers, find the number that's closest to their average (ex: your_func([1,2,3]) returns 3)

given_array = [1,-2,3,-299999]

def array_average(input_array)
  array_sum = input_array.reduce(0) { |sum, num| sum + num }
  average = array_sum / input_array.length
end

def find_similar_average(input_array)
  return nil if input_array.nil?
  avg = array_average(input_array)
  similar_average_value = input_array.first
  input_array.each do |value|
    if avg == value
      return value
    end
    if (value - avg).abs < (similar_average_value - avg).abs
      similar_average_value = value
      puts '> changed value: ' + value.to_s
    end
  end
  similar_average_value
end
# need to test negative numbers

# runner code
puts '>> your average: ' + array_average(given_array).to_s # should be 3
puts '>> your closest final value: ' + find_similar_average(given_array).to_s