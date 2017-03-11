# Complete the method called split_array, which two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)
  output_array = []
  size_array = []
  count = 0
  while count <= array.length 
    if size_array.length < array_size
      size_array << array[count]
      count += 1
    else
      output_array << size_array
      size_array = []
    end
  end
  output_array
  # I had to hard code below to visualize it
  # size_array << array[0]
  # size_array << array[1]
  # output_array << size_array
  # size_array = []
  # size_array << array[2]
  # size_array << array[3]
  # output_array << size_array
  # size_array = []
  # size_array << array[4]
  # size_array << array[5]
  # output_array << size_array
  # output_array
end

# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end