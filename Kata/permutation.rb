# return all permutations of these values

# n = nil
# t = true
# f = false

# meaning

# n && t && f
# n || t && f
# n || t || f
# n && t || f

# for all variations and orderings of n, t, f, and ||, &&

# your output should look like this:

# [["nil && true && false", nil], ...]

def values_permutation(n, t, f)
	def to_sb
    return 'nil' if [FalseClass, NilClass].include?(self.class) 
  end  
	x, output, y= [], [], []
	x = [n.to_sb, t, f].permutation(3).to_a
	x.each do |e| 
		output.push(e.join('&&'),e.join('||'),e.zip(['&&','||']).flatten.join, e.zip(['||','&&']).flatten.join)
	end
	output.each.map {|e| y.push(e) && y.push(instance_eval(e))}
	print y.each_slice(2).each.map{|e| e}
end

values_permutation(nil, true, false)

