teams = ["O", "X"]
result = "D"
count = 0


array = Array.new(5)
5.times do |i|
  array[i] = gets.chomp.split("")
end

# 右斜め
teams.each do |team|
  count = 0
  (0..4).each do |i|
    if array[i][i] == team
      count += 1
    end

    if count == 5
      result = team
    end
  end
end

# 左斜め
teams.each do |team|
  count = 0
  (0..4).each do |i|
    if array[i][4 - i] == team
      count += 1
    end

    if count == 5
      result = team
    end
  end
end

# 結果表示
puts result


# # 模範回答
# board = []
# result = 'D'

# # 盤面の初期化
# (1..5).each { board.push(gets.chomp.split('')) }

# (1..2).each do |time|
#   o = 0
#   x = 0

#   i = 0

#   if time == 1
#     j = 0
#   else
#     j = 4
#   end

#   (1..5).each do
#     if board[i][j] == 'O'
#       o = o + 1
#     elsif board[i][j] == 'X'
#       x = x + 1
#     else
#       break
#     end

#     i = i + 1

#     if time == 1
#       j = j + 1
#     else
#       j = j - 1
#     end
#   end

#   if o == 5
#     result = 'O'
#     break
#   elsif x == 5
#     result = 'X'
#     break
#   end
# end

# puts result