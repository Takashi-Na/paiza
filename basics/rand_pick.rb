# 配列を使ったランダムくじ
# スライム,モンスター,ドラゴン,魔王

line = gets.chomp.split(",")
line.each do |enemy|
	puts "#{enemy}が、現れた！"
end

# ランダムな数を作る範囲を調べる
num = line.length
puts "敵は#{num}匹"

# ランダムな数を生成
attack = rand(num)

# 選んだ的に、「会心の一撃」と表示
puts "#{line[attack]}に会心の一撃！#{line[attack]}を倒した"