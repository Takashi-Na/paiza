# 判定
teams = ["O", "X"]
result = "D"

(1..5).each do |i|
  # 標準入力
  str = gets.chomp.split("")

  teams.each do |team|
    count = 0
    # 判定
    str.each do |column|
      if column == team
        count += 1
      end

      if count >= 5
        result = team
      end
    end
    
  end
end
# 結果
puts result