# playerの数
n = gets.to_i

members = {}
n.times do |i|
  name = gets.chomp
  members[name] = 0
end

# 攻撃回数
m = gets.to_i

m.times do |i|
  name, dmg = gets.split(" ")
  members[name] += dmg.to_i
end

sorted_dmg = members.sort

sorted_dmg.each do |_, value|
  puts value
end