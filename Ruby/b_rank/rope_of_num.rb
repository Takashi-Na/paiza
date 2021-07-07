# 縦,横
vertical,side = gets.split(" ").map(&:to_i)

lines = []
vertical.times do |i|
  lines[i] = gets.chomp.split("")
end

# ロープの数の初期化
rope = 0
lines.each_with_index do |line, i|
  line.each_with_index do |square, j|
    if square == "#"
      # puts square
      # puts "i,j:#{i},#{j}"

      # 上の判定
      if i == 0
        rope += 1
      elsif i-1 >= 0 && lines[i-1][j] == "."
        rope += 1
      end
      # 下の判定
      if i == vertical-1
        rope += 1
      elsif i+1 < vertical && lines[i+1][j] == "."
        rope += 1
      end
      # 左の判定
      if j == 0
        rope += 1
      elsif j-1 >= 0 && lines[i][j-1] == "."
        rope += 1
      end
      # 右の判定
      if j == side - 1
        rope += 1
      elsif j+1 < side && lines[i][j+1] == "."
        rope += 1
      end
    end
  end
end

p rope