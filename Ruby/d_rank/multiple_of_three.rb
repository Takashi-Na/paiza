len = gets.to_i

input_line = gets
nums = input_line.split(" ").map(&:to_i)

count = 0
nums.each do |num|
  p nums[num]
  if nums[num]
    count += 1
  end
end

puts count