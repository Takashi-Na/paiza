# 標準入力から読み込んだ複数行を配列に格納しよう

array = []
while line = gets
    array.push(line.chomp)
end

p array