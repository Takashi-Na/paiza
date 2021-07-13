input_line = gets.chomp

day,time = input_line.split(" ")

day_time_array = [day.split("/").map(&:to_i), time.split(":").map(&:to_i)]

# # デバック
# p day_time_array

# 日付計算
if day_time_array[1][0] >= 24
  # hourが24以上だった場合
  add_day = day_time_array[1][0] / 24
  day_time_array[1][0] -= add_day * 24
  # 日にちの加算
  day_time_array[0][1] += add_day
end

# # デバック
# p day_time_array

# 変数に代入
month = day_time_array[0][0]
day = day_time_array[0][1]
hour = day_time_array[1][0]
minute = day_time_array[1][1]

# 結果表示
puts format("%02d/%02d %02d:%02d", month, day, hour, minute)
