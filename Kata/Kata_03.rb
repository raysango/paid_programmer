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
	a = [obj1.class]
	b = [obj2.class]
	i = 0
	c = a[i].superclass
  d = b[i].superclass
  while c != BasicObject && d != BasicObject do 

  	c = a[i].superclass
  	d = b[i].superclass
  	a << c
  	b << d
  	i += 1
 	end	
output = a & b
puts output[0]
end

shared_ancestor(1, 1.0) 

# puts 1.class.superclass.superclass.superclass.superclass