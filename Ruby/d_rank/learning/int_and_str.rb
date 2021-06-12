# 数字の桁数を判定するシステム
len = gets.to_i # 判定する数字の数を指定

num = []
nums = []

# 標準入力
i = 0
while i < len
  num = gets.chomp.chars
  nums << num
  i += 1
end

# 表示
i = 0
while i < len
  puts nums[i].length
  i += 1
end