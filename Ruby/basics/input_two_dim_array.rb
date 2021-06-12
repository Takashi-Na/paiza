# 標準入力から、2次元配列を読み込む

# 標準入力のデータ
# 0,0,1,1,0,0
# 0,1,0,0,1,0
# 1,0,0,0,0,1
# 1,1,1,1,1,1
# 1,0,0,0,0,1
# 1,0,0,0,0,1

letter_A = []
while line = gets
	line.chomp!
    # 読み込んだデータを配列に追加
  letter_A.push(line.split(","))
end
p letter_A