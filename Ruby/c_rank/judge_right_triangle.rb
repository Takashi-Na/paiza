m, n = gets.split(" ").map(&:to_i)

count = 0
m.times do |bottom|
  a = bottom
  # aが0の時はスキップ
  if a == 0
    next
  end
  n.times do |height|
    b = height

    # bが0の時はスキップ
    if b == 0
      next
    end

    # 三平方の定理を使用
    c = Math.sqrt(a**2 + b**2)

    # cが整数の時のみカウント
    if c - c.to_i == 0
      count += 1
    end
  end
end

puts count