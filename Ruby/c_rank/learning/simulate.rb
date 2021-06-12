n = gets.to_i
a, b = gets.split(" ").map(&:to_i)

# 初期値
paiza, kyoko = 1, 1

times = 0
while true
  kyoko += paiza * a
  # カウント加算
  times += 1

  # kyoukoの値がnを超えていたら終了
  if kyoko > n
    break
  end

  paiza += kyoko % b
end

puts times