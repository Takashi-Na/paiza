len = gets.to_i

len.times do |i|
    input_line = gets.chomp
    num = input_line.delete("^0-9", "^-") 
    puts num
end