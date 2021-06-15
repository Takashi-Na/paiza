array = [4, 0, 5, -1, 3, 10, 6, -8]

sum = 0
array.each do |num|
  if num >= 5
    sum += num
  end
end

puts sum