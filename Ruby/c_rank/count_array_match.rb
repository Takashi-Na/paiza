pattern = gets.chomp
str = gets.chomp

count = 0
(0..(str.size - pattern.size)).each do |i|
  substr = str.slice(i, pattern.size)

  if substr == pattern
    count += 1
  end
end

puts count