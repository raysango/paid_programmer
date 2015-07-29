=begin

Write code in the count method below, such that I can say...

Transform.new.count

...and counts for the words located in the file input_files/transform2.txt
will be output. (See spec/test_0001_spec.rb to see the exact output)

=end 
class Transform2
  def count
    the_file = './programming_tests/input_files/transform2.txt'
    @h = Hash.new
    f = File.open(the_file, "r")
    f.each_line do |line|
    	words = line.split
    	words.each do |w|
    		if @h.has_key?(w)
    			@h[w] = @h[w] + 1
    		else
    			@h[w] = 1
    		end
    	end
    end
    return @h
  end
end
# check http://ruby-doc.org/core-2.2.2/IO.html#method-i-each_line
