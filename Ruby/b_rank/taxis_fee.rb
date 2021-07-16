# n:タクシーの種類の数 x:乗る距離
n, x = gets.split(" ").map(&:to_i)

# 初乗り距離/初乗り運賃/加算距離/加算運賃
taxes = Array.new(n)
n.times do |i|
  taxes[i] = gets.split(" ").map(&:to_i)
end

# 運賃の計算
fares = Array.new(n)
n.times do |i|
  paid_distance = 0

  # 初乗り運賃加算
  fares[i] = taxes[i][1]
  paid_distance = x - taxes[i][0]

  # 初乗り距離内ならスキップ
  if paid_distance < 0
    next
  end

#   加算回数の判定
  if paid_distance == 0
    fares[i] += taxes[i][3]
  else
    num_of_add = (paid_distance.to_f / taxes[i][2].to_f).ceil
    fares[i] += taxes[i][3] * num_of_add
  end
end

max = fares.max
min = fares.min

puts "#{min} #{max}"
