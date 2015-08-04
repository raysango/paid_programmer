require 'roo' #Roo gem to access and manipulate excel files

def all_digits(str)
    str[/[0-9]+/]  == str
end

file = Roo::Spreadsheet.open('sample_data.xlsx')
sheet = file.sheet('factual')
header = sheet.row(1)
number_of_columns =  file.last_column

i = 1
max_field = []

while i <= number_of_columns do
	column_i = sheet.column(i).drop(1).map {|e| e ? e : 0}.each.map{|r| r.to_s if r.class != "String"}
	if column_i.max_by(&:length) != "0"
		# max_field << column_i.max_by(&:length)
		if all_digits(column_i.max_by(&:length).gsub(/[-.]/,""))
            max_field << column_i.max_by(&:length).length - 2 #length before string conversion
			max_field << sheet.cell("A",sheet.column(i).index(sheet.column(i).max_by(&:length)).to_i + 1)
		else
			max_field << column_i.max_by(&:length).length
			max_field << sheet.cell("A",sheet.column(i).index(column_i.max_by(&:length)).to_i + 1)
		end
	else
		max_field << 0
		max_field << ""
	end
	i += 1
end

x = []
max_field.each_slice(2).each.map{|e| x << e}
puts Hash[header.zip(x)]