len = gets.to_i

sum = 0
len.times do
  a,b = gets.split(" ").map(&:to_i)
  if a == b
    sum += (a * b)
  else
    sum += (a + b)
  end
end

puts sum