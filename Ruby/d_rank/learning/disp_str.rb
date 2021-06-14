input_line = gets.chomp

array_line = input_line.split("")

for str in array_line[0]..array_line.last
    puts str
end