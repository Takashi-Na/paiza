teams = ["O", "X"]
result = "D"
count = 0


array = Array.new(5)
5.times do |i|
  array[i] = gets.chomp.split("")
end

(0..4).each do |line|
  teams.each do |team|
    (0..4).each do |column|
      # print array[column][line]
      if array[column][line] == team
        count += 1
      end

      if count >= 5
        result = team
      end
    end
  # # デバック用
  # puts ""
  # puts "team:#{team}"
  # puts "count:#{count}"
  count = 0
  # puts "result:#{result}"
  # puts ""
  end
end

# 結果表示
puts result



# # 模範回答
# board = []
# result = 'D'

# # 盤面の初期化
# (1..5).each { board.push(gets.chomp.split('')) }

# (0..4).each do |i|
#   o = 0
#   x = 0
#   board.each do |row|
#     if row[i] == 'O'
#       o = o + 1
#     elsif row[i] == 'X'
#       x = x + 1
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