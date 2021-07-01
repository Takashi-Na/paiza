# playerのカードを取り込むメソッド
def player_card
  n, m = gets.split(" ").map(&:to_i)
  return n,m
end

# 勝敗を判定するメソッド
def result(d1, d2, p1, p2)
  if d1 > p1
    puts "High"
  elsif d1 == p1
    if d2 < p2
      puts "High"
    else
      puts "Low"
    end
  else
    puts "Low"
  end
end


# 親カード
a,b = gets.split(" ").map(&:to_i)
# 参加人数
len = gets.to_i
# 判定
len.times do
  n, m = player_card
  result(a, b, n, m)
end