# line取得
input_line = gets.chomp

# 数字を各変数に代入
a, b = input_line.split(" ")

# 桁数の確認
if a.length > b.length
  num_len = a.length
else
  num_len = b.length
end

# 0埋めで桁の多い方に合わせる
num_a = format("%0#{num_len}d", a.to_i)
num_b = format("%0#{num_len}d", b.to_i)

# 桁ごとに配列に代入
a_array = num_a.split("").map(&:to_i)
b_array = num_b.split("").map(&:to_i)

# 繰り上がらないように計算し、ans配列に代入
ans = []
num_len.times do |i|
  ans[i] = (a_array[i] + b_array[i]) % 10
end

# 結果表示
ans.each do |num|
    print num
end