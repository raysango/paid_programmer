=begin
  
  # write code such that I can say

  m = MetaProgram.new(h)

  where h = {"this" => "that", "that" => "other", "where" => "here"}

  and m.this == "that", m.that == "other", m.where == "here"

=end

class MetaProgram

  def initialize(h)
    @h = h
    @h.each do |key,value|
      self.class.send(:attr_accessor, key) #to be able to call attr_accessor inside instance
    	self.send("#{key}=",value)
    end
  end

end
# One of the most useful feature I think with .send method is that it can dynamically call on method. This can save you a lot of typing. One of the most popular use of .send method is to assign attributes dynamically. For example:

# class Car
#   attr_accessor :make, :model, :year
# end  
# To assign attributes regularly one would need to

# c = Car.new
# c.make="Honda"
# c.model="CRV"
# c.year="2014"
# Or using .send method:

# c.send("make=", "Honda")
# c.send("model=", "CRV")
# c.send("year=","2014")
# But it can all be replaced with the following:

# Assuming your Rails app needs to assign attributes to your car class from user input, you can do

# c = Car.new()
# params.each do |key, value|
#   c.send("#{key}=", value)
# end

