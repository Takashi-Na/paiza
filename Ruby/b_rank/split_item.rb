# 行数と列を取得
h, w = gets.split(" ").map(&:to_i)

# 配列に格納
columns = []
h.times do |i|
  columns[i] = gets.split(" ").map(&:to_i)
end

# p columns

# 各行の平均を計算
averages = []
columns.each_with_index do |column, i|
  column_sum = 0
  column.each do |peace|
    column_sum += peace
  end

  averages[i] = column_sum / 2

  # 平均が割り切れていなければ処理を終了
  if column_sum % 2 != 0
    puts "No"
    exit
  end
end

# ルール違反をした場合も処理を終了
columns.each_with_index do |column, i|
  target = 0
  column.each do |peace|
    target += peace
    if target == averages[i]
      break
    end
    if target > averages[i]
      puts "No"
      exit
    end
  end
end

# p averages

# 結果表示
puts "Yes"

columns.each_with_index do |column, i|
  target = 0
  column.each do |peace|
    target += peace
    if target <= averages[i]
      print "A"
    else
      print "B"
    end
  end
  puts ""
end