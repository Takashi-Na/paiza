len = gets.to_i

nums = []
len.times do
  line = gets.to_i
  nums.push(line)
end

puts nums.sort.reverse