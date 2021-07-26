# 人数の取得
n = gets.to_i

# カードを配列として取得
card_array = []
card_array = gets.chomp.split(" ")

# カードのint型の配列を準備
int_array = []
flag = 0

# 10倍のカードがあるかの確認
card_array.each do |card|
  # "x10"があった場合はflagを+1する
  if card.include?("x")
    flag += 1
  # それ以外はint型にして格納
  else
    int_array.push(card.to_i)
  end
end

# 昇順にソート
sorted_array = int_array.sort

# 最小値が0の場合は最大値を0にする
min = sorted_array.min
if min == 0
  sorted_array[-1] = 0
end

# 合計値の計算
sum = 0
sorted_array.each do |card|
  sum += card
end
# "x10"のカードがあった場合のみ合計値を10倍する
if flag == 1
  sum *= 10
end

# 結果表示
p sum