# カウントする文字
target = gets.chomp

# 対象の文
str = gets.chars

count = 0
str.each do |str|
  if str == target
    count += 1
  end
end

puts count