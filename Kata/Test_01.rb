=begin
Please answer in either Ruby, Perl, PHP, Python or Java
1. Convert this string
string = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"
to this hash:
h = {"key" => [["value_1", "value_2"],["value_3", "value4"]], 5=>"10:00AM"}
then convert h to JSON.
Please note that the brackets are unbalanced on purpose. 
=end
require "JSON"
def Test(string)
array = string.split(",")
time = array.slice!(4).gsub(/[\]]/,'').split("")
d = []
i = 0
while i <= time.size do #get ":"" indexes
	if time[i] == ":"
		d << i
	end
		i += 1
end
i = 0
#format time
time_final = time.reject{|c| c == ":"}.insert(d[i],"=>").insert(d[i+1],":").join.gsub(/[>]/,">\"").gsub(/[}]/,"\"}")

array_final = array.join(",").gsub(/[:]/,"\"=>").gsub(/[{]/,"{\"").split(">")

output = []
array_final.slice!(1).scan(/\w+/).each_slice(2).map {|e| output << e}

output_final = []
output_final << array_final.join(">")
output_final << output.to_s
h_1 = output_final.join(">")
h_2 = []
h_2 << h_1
h_2 << time_final
h = instance_eval(h_2.join(","))
h_to_json = h.to_json

puts h
puts h_to_json
end

Test("{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}")