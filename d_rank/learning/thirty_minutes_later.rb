input_line = gets

# 配列に格納
time = input_line.split(":").map(&:to_i)

# 30分後計算(int)
if time[1] >= 30
  time[0] += 1
  time[1] -= 30
else
  time[1] += 30
end

# int to str

# 表示
print sprintf('%02d', time[0])
print ":"
print sprintf('%02d', time[1])