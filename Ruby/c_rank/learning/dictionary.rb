# a,b,cの人数の入力
a, b, c = gets.split(" ").map(&:to_i)

group_a = {}
a.times do
  num, req = gets.split(" ").map(&:to_i)
  group_a[num] = req
end

# p group_a

group_b = {}
b.times do
  num, req = gets.split(" ").map(&:to_i)
  group_b[num] = req
end

# p group_b

group_c = {}
a.times do |i|
  group_c[i+1] = group_b[group_a[i+1]]
end

group_c.each do |rep|
  puts rep.join(" ")
end






# # 回答
# n, m, l = gets.split(' ').map(&:to_i)

# group_a = {}
# n.times do
#   num, req = gets.split(' ').map(&:to_i)
#   group_a[num] = req
# end

# group_b = {}
# m.times do
#   num, req = gets.split(' ').map(&:to_i)
#   group_b[num] = req
# end

# group_c = {}
# n.times { |i| group_c[i + 1] = group_b[group_a[i + 1]] }

# group_c.each do |val|
#   puts val.join(' ')
# end