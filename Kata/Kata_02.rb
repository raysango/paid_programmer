	# 1. Write a function that capitalizes every third alphanumeric character in the following string:

	# Larubymeetup.com
	# so that your output looks like

	# laRubYmeEtuP.coM
	# Notice that, when counting every third character, we ignore the period, but we do include the period in the output.
	# print x.each.select {|letter| b.include? x.index(letter) }.each.map {|letter| letter.capitalize}

require 'enumerator'
		def cap(s)
			x = s.downcase.split("")
			d = []
			x.each.map{|u| d.push(x.index(u)) if u == '.' } #returns '.' indexes in main string
			z = []
			a = x.reject {|c| d.include? x.index(c)}.each_slice(3).map {|e| z.push(e)}
			f = z.each.map {|h| h.join.reverse.capitalize.reverse}.join
			i = 0
			while i <= d.size - 1 do
				r = f.split("").insert(d[i],'.')
				i += 1
			end
			puts r.join
		end 
		cap('Larubymeetup.com')
