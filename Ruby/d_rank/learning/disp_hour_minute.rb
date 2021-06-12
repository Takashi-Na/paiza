input_line = gets
time = input_line.split(":").map(&:to_i)

puts time[0]
puts time[1]