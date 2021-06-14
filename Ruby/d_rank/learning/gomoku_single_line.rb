line = gets.chomp.split("")

if line.count("O") == 5
    puts "O"
elsif line.count("X") == 5
    puts "X"
else
    puts "D"
end


# # 模範回答
# array = %w[O X]

# string = gets.chomp.split('')

# result = 'D'

# array.each do |a|
#   count = 0
#   string.each do |s| 
#     if s == a
#         count = count + 1
#     end
    
#     if count >= 5
#         result = a
#     end
#   end
# end

# puts result