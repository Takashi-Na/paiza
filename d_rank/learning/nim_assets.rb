# asset数の入力
len = gets.to_i

# assets[]への入力
assets = []
len.times do
  line = gets.to_i
  assets.push(line)
end

# targetの入力
target = gets.to_i

# targetとassetの一致する配列の確認
len.times do |i|
  if assets[i] == target
    puts i + 1
    break
  end
end