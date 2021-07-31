orders = []

# 変数の初期化
v1 = 0
v2 = 0

# 命令の数
order_num = gets.to_i

order_num.times do |i|
  orders[i] = gets.chomp.split(" ")
end

orders.each do |order|
  if order[0] == "SET"
    if order[1] == "1"
      v1 = order[2].to_i
    elsif order[1] == "2"
      v2 = order[2].to_i
    end
  elsif order[0] == "ADD"
    v2 = v1 + order[1].to_i
  elsif order[0] == "SUB"
    v2 = v1 - order[1].to_i
  end
end

puts "#{v1} #{v2}"