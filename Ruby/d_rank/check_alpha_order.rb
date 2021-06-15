input_line = gets.chomp

array_line = input_line.split("")

if array_line[0] < array_line[-1]
  puts "true"
else
  puts "false"
end

# # 模範回答
# string = gets.chomp

# puts string[0].ord < string[string.size - 1].ord