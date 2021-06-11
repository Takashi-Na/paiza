# 人の人数
n = gets.to_i

members = Array.new(n)
n.times do |i|
  members[i] = gets.chomp
end

# 被ダメージ回数
m = gets.to_i

dmgs = Array.new(m)
m.times do |i|
  dmgs[i] = gets.split(" ")
end

# ターゲットの名前
target = gets.chomp

total_dmg = 0
m.times do |i|
  if dmgs[i][0] == target
    total_dmg += dmgs[i][1].to_i
  end
end

puts total_dmg

# # hashを使った場合
# n = gets.to_i

# damage = {}
# n.times do
#   name = gets.chomp
#   damage[name] = 0
# end

# m = gets.to_i
# m.times do
#   name, attack = gets.split(' ')
#   damage[name] += attack.to_i
# end

# s = gets.chomp
# puts damage[s]