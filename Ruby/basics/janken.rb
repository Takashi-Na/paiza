# じゃんけんプログラム

# 標準入力から1行取得
line = gets.chomp
# カンマで分割して、配列に代入
janken = line.split(",")
# 配列の要素数を変数に代入
num = janken.length
# 配列の中身を出力
p janken
# ランダムに選んだ配列の要素を出力
p janken[rand(num)]