=begin
  
Write code inside the to_hash method below, such that when you take this string...

'{first: "Stephen", last: "King", joined: ["first", "2015-07-26T16:06:41-07:00"]}'

...and call Transform1.new(str).to_hash, and this hash will be output:

{first: "Stephen", last: "King", joined: ["first", "2015-07-26T16:06:41-07:00"]}

=end
class Transform1
  def initialize(str)
    @str = str
  end

  def to_hash
    instance_eval(@str)
  end
end