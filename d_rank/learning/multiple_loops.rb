# targetの数入力
target_len = gets.to_i

# targetの格納
targets = []
target_len.times do
  line = gets.chomp
  targets.push(line)
end

# 文字列の数入力
str_len = gets.to_i

# 文字列の格納
str = []
str_len.times do
  line = gets.chomp
  str.push(line)
end

targets.each do |t|
  str.each do |s|
    if s.include?(t)
      puts "YES"
    else
      puts "NO"
    end
  end
end