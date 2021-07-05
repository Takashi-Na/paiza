require "time"

# 時間の表記が一桁だった場合に0を左に追加する
def to_double_digit(hour, minute)
  hours = "%02d" % hour
  minutes = "%02d" % minute
  return hours, minutes
end

train_times = []
attendande_times = []
arrival_times = []
attendance_arrival_times = {}

#配座駅へまで時間[m],配座駅から儀野駅の乗車時間[m],儀野駅から会社までの時間[m]
a, b, c = gets.split(" ").map(&:to_i)

# 取り込む電車の数
train_num = gets.to_i

# 電車の出発時間の取り込み
train_num.times do |i|
  train_times[i] = gets.split(" ").map(&:to_i)
  hour, minute = to_double_digit(train_times[i][0], train_times[i][1])
  train_times[i] = "#{hour}:#{minute}"
end

# 時間の計算
train_times.each_with_index do |train_time, i|
  calc_time = Time.parse(train_time)

  # 出社時間の計算
  attendande_time = calc_time - a * 60
  hour, minute = to_double_digit(attendande_time.hour, attendande_time.min)
  attendande_times[i] = "#{hour}:#{minute}"

  # 到着時間の計算
  arrival_time = calc_time + (b + c) * 60
  hour, minute = to_double_digit(arrival_time.hour, arrival_time.min)
  arrival_times[i] = hour.to_s + minute.to_s
end

# 出社時間と到着時間のハッシュを作成
train_num.times do |i|
  attendance_arrival_times[attendande_times[i]] = arrival_times[i].to_i
end

# 間に合う時間をtime変数に上書き保存
time = ""
attendance_arrival_times.each do |key, value|
  if value <= 859
    time = key
  end
end

# 結果表示
puts time