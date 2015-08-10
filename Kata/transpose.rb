# # write a method called "transpose" that takes this array of arrays:

# [
# ['first', 'second'],
# ['third', 'fourth']
# ]

# # and transposes it into this array of arrays

# x = [
# ['first', 'third'],
# ['second', 'fourth']
# ]
# print x[0][0]

# # you can think of it as rows become columns
# # I know there is an Array method called "transpose" but
# # I am asking you to write your own

def trans(input)
	rows, columns = input.count, input.first.count
	x, y = [], []
	i = j = 0
	while j < columns do
		while i <= rows - 1 do
			x.push(input[i][j])
			i += 1
		end
		j += 1 #go to next column
		i = 0 #reset the inner counter to go back to 1st array
	end
	x.each_slice(rows).each.map{|e| y.push(e)}
	return y
end

trans([['first', 'second'], ['third', 'fourth']])


