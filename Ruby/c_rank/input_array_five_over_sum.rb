len = gets.to_i


num_array = Array.new(len)
len.times do |i|
  line = gets.to_i
  num_array[i] = line
end

sum = 0
num_array.each do |num|
  if num >= 5
    sum += num
  end
end

puts sum