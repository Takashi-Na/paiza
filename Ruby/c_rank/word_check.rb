score = 0

len = gets.to_i

len.times do |i|
  ans, target = gets.chomp.split(" ")

  # 完全一致だった場合
  if ans == target
    score += 2
    next
  end

  ans_array = ans.split("")
  target_array = target.split("")

  # 文字数が不一致だった場合はloopをスキップ
  if ans_array.size != target_array.size
    next
  end
  
  # 文字の一致数をカウント
  count = 0
  (ans_array.size).times do |num|
    if ans_array[num] == target_array[num]
      count += 1
    end
  end

  # カウントによってスコアに加算
  if count == ans_array.size
    score += 2
  elsif count == ans_array.size - 1
    score += 1
  end
end

# 結果表示
puts score