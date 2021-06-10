# 入力例1
# 2
# 1 3
# 2 2

len = gets.to_i

basket = Array.new(len)
len.times do |i|
  basket[i] = gets.split(" ").map(&:to_i)
end

basket.sort!.reverse!

basket.each do |fruits|
  puts fruits.join(" ")
end

# n = gets.to_i

# basket = Array.new(n)
# n.times { |i| basket[i] = gets.split(' ').map(&:to_i) }

# basket.sort!.reverse!

# basket