def values_permutation(n, t, f)
	x, output, y= [], [], []
	x = [n, t, f].permutation(3).to_a
	x.each do |e| 
		output.push(e.join('&&'),e.join('||'),e.zip(['&&','||']).flatten.join, e.zip(['||','&&']).flatten.join)
	end
	output.each_slice(1).each.map {|e| y.push(e)}
	return y.each_slice(4).each.map {|e| e.flatten}
end

values_permutation('nil', true, false)#not sure if we are allowed to add nill as a string