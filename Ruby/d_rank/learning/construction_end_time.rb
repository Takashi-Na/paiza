# 週数の入力
week = gets.to_i

i = 1
while i <= week do
  # 開始時間・所要時間のinput
  line = gets
  process = line.split(" ")

  # process[] = [開始時刻, hours, minutes]

  # str to int ＆ 計算
  time = process[0].split(":").map(&:to_i)
  h = time[0].to_i
  m = time[1].to_i

  h = h + process[1].to_i
  m = m + process[2].to_i

    # 分が60以上になった場合
  if m >= 60
    m -= 60
    h += 1
  end

  # 時間が24以上になった場合
  if h >= 24
    h -= 24
  end

  # 表示
  print sprintf('%02d', h)
  print ":"
  puts sprintf('%02d', m)

  # # case:表示部をまとめる場合
  # h = h.to_s
  # m = m.to_s

  # if h.length == 1
  #   h = "0" + h
  # end
  
  # if m.length == 1
  #   m = "0" + m
  # end

  # puts h + ":" + m


  i += 1
end