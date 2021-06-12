# 回数指定
len = gets.to_i

# 指定分の行取り込み
i = 0
while i < len
  num = gets.to_i
  if num == 7
    flag = true
  end
  i += 1
end

if flag
  puts "YES"
else
  puts "NO"
end