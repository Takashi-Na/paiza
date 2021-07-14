# 入札開始金額,aの予算,bの予算  の取り込み
input_line = gets.chomp
input_array = input_line.split(" ").map(&:to_i)

# 各変数に代入
start_price = input_array[0]
a_budget = input_array[1]
b_budget = input_array[2]

# 入札金額に代入
bid_amount = start_price

# 予算を超えるまで繰り返し
while (true)
  if bid_amount <= a_budget - 10
    bid_amount += 10
    flag = "a"
  else
    break
  end

  if bid_amount <= b_budget - 1000
    bid_amount += 1000
    flag = "b"
  else
    break
  end
end

# フラグを購入者に変換
if flag == "a"
  buyer = "A"
else
  buyer = "B"
end

# 結果表示
puts "#{buyer} #{bid_amount}"