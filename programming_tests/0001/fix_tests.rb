=begin
  
Create a rails_helper.rb file in the ./spec folder, and include your rails_helper.rb in test_0001_spec.rb, such that this before block in test_0001_spec.rb:

  before do
    @files = Dir.glob(File.join(File.dirname(__FILE__), "../programming_tests/0001/*")).map{|f| require(f)}
  end

is no longer needed.

Also, alter your rails_helper.rb file such that I can use byebug inside any test I write that includes your new rails_helper.rb

=end