require "byebug"
@files = Dir.glob(File.join(File.dirname(__FILE__), "../programming_tests/0001/*")).map{|f| require(f)}