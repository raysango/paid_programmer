=begin
a = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]

# and transform it into this array

[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 0, 0]]
=end
a = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
b = a.flatten
output = []


#3rd Solution
require 'enumerator'
output = []
a.flatten.each_slice(3).map do |e|
  e.push(0) while e.size < 3
  output.push(e)
end
print output

#1st Solution
# while b != [] do
#     output.push(b.slice!(0, 3))
#   end
#   output.each do |inner|
#   	if inner.count < 3
#   		inner.concat Array.new(3 - inner.count, 0)
#   	end
#   end
#   print output

#2nd Solution
# n = b.count
# i = 0 
#  while i < n do
#  	 if n - i < 3
#  	 	output << (b[i..i+2].concat Array.new(3 - (n - i), 0))
#  	 else
#  	output << b[i..i+2]
#  end
#  	i += 3
#  end
#  print output