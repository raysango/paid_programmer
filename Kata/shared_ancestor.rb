# write a function called shared_ancestor that finds the youngest shared ancestor
# class of two objects

# So -- 
# shared_ancestor(1, 1.0)
# will return 
# Numeric

# You get an object's class by calling
# object.class
# you get a class's parent class, by calling
# class.superclass
  	# you can an object's class by saying obj.class
#1.class == fixnum
# so you know where to start, right ? obj.class
# what is the root class in Ruby ?
#nope -- it's BasicObject
# so you know where to stop


def shared_ancestor(obj1, obj2)
	a, b = [obj1.class], [obj2.class]
  while a.last != BasicObject && b.last != BasicObject do 
  	a << a.last.superclass
  	b << b.last.superclass
 	end	
	output = a & b
	inputs = [a, b]
	x = []
	inputs.each.map{|e| e.index(output.first) == 1 ? x.push("parent") : x.push("grandparent")}
	puts "The shared ancestor of obj1 and obj2 is #{output.first}, which is obj1's #{x.first}, and obj2's #{x.last}"
end
shared_ancestor(1, 1.0) 

# puts 1.class.superclass.superclass.superclass.superclass