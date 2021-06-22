# 文字列も配列もオブジェクト

text = "123"
p text.to_i
p text.length
p text.class
p "123".class

players = "勇者,戦士,魔法使い"
array = players.split(",")
p array
p array.length

array2 = Array.new(3)
p array2