=begin
Please answer in either Ruby, Perl, PHP, Python or Java
Write a class `Sample` whose initialize method takes an arbitrary hash, e.g.
`h = {"this" => [1,2,3,4,5,6], "that" => ['here', 'there', 'everywhere'], :other => 'here'}`
and represent each key in the hash as an attribute of an instance of the class, such that I can say:
`c = Sample.new(h)`
and then
`c.this` should return `[1,2,3,4,5,6]`
`c.that`  should return `['here', 'there', 'everywhere']`
`c.other` should return `'here'`
=end

class Sample

  def initialize(h)
    @h = h
    @h.each do |key,value|
      self.class.send(:attr_accessor, key) #to be able to call attr_accessor inside instance
    	self.send("#{key}=",value)
    end
  end

end