result = "D"
count = 0

# 盤面の取り込み
array = Array.new(5)
5.times do |i|
  array[i] = gets.chomp.split("")
end

# 横の判定
array.each do |line|
  o = 0
  x = 0
  line.each do |element|
    if element == "O"
      o += 1
    elsif element == "X"
      x += 1
    end

    if o == 5
      result = "O"
      break
    elsif x == 5
      result = "X"
      break
    end
  end
end

# 縦の判定
(0..4).each do |i|
  o = 0
  x = 0
  array.each do |row|
    if row[i] == "O"
      o += 1
    elsif row[i] == "X"
      x += 1
    end

    if o == 5
      result = "O"
      break
    elsif x == 5
      result = "X"
      break
    end
  end
end

# 斜めの判定
# time=1の場合、右斜めの判定 time=2の場合、左斜めの判定
(1..2).each do |time|
  o = 0
  x = 0

  (0..4).each do |i|
    if time == 1
      if array[i][i] == "O"
        o += 1
      elsif array[i][i] == "X"
        x += 1
      end
    else
      if array[i][4 - i] == "O"
        o += 1
      elsif array[i][4 - i] == "X"
        x += 1
      end
    end

    if o == 5
      result = "O"
      break
    elsif x == 5
      result = "X"
      break
    end
  end
end

# 結果表示
puts result

# # 模範回答
# $board = []

# # 盤面の初期化
# (1..5).each { $board.push(gets.chomp.split('')) }

# def aligned?(o, x)
#   if o == 5
#     'O'
#   elsif x == 5
#     'X'
#   else
#     'D'
#   end
# end

# def row_aligned?
#   result = ''

#   $board.each do |row|
#     o = 0
#     x = 0
#     (0..4).each do |i|
#       if row[i] == 'O'
#         o = o + 1
#       elsif row[i] == 'X'
#         x = x + 1
#       else
#         break
#       end
#     end

#     result = aligned?(o, x)
#     break if result != 'D'
#   end

#   result
# end

# def collum_aligned?
#   result = ''

#   (0..4).each do |i|
#     o = 0
#     x = 0
#     $board.each do |row|
#       if row[i] == 'O'
#         o = o + 1
#       elsif row[i] == 'X'
#         x = x + 1
#       end
#     end

#     result = aligned?(o, x)
#     break if result != 'D'
#   end

#   result
# end

# def oblique_aligned?
#   result = ''

#   (0..1).each do |time|
#     i = 0

#     if time.zero?
#       j = 0
#     else
#       j = 4
#     end

#     o = 0
#     x = 0
#     (1..5).each do
#       if $board[i][j] == 'O'
#         o = o + 1
#       elsif $board[i][j] == 'X'
#         x = x + 1
#       end

#       i = i + 1

#       if time.zero?
#         j = j + 1
#       else
#         j = j - 1
#       end
#     end

#     result = aligned?(o, x)
#     break if result != 'D'
#   end

#   result
# end

# if row_aligned? == 'O' || collum_aligned? == 'O' || oblique_aligned? == 'O'
#   puts 'O'
# elsif row_aligned? == 'X' || collum_aligned? == 'X' || oblique_aligned? == 'X'
#   puts 'X'
# else
#   puts 'D'
# end