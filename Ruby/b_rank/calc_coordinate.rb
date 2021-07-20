def turn_order(order)
  # Rの場合
  if order == "R"
    if $direction == "f"
      $direction = "r"
    elsif $direction == "r"
      $direction = "b"
    elsif $direction == "b"
      $direction = "l"
    elsif $direction == "l"
      $direction = "f"
    end

  # Bの場合
  elsif order == "B"
    if $direction == "f"
      $direction = "b"
    elsif $direction == "r"
      $direction = "l"
    elsif $direction == "b"
      $direction = "f"
    elsif $direction == "l"
      $direction = "r"
    end

  # Lの場合
  elsif order == "L"
    if $direction == "f"
      $direction = "l"
    elsif $direction == "r"
      $direction = "f"
    elsif $direction == "b"
      $direction = "r"
    elsif $direction == "l"
      $direction = "b"
    end
  end
end

def move_order(order)
  # 状態が"f"の時
  if $direction == "f"
    if order == "F"
      $s_y += $move[order]
    elsif order == "R"
      $s_x += $move[order]
    elsif order == "B"
      $s_y -= $move[order]
    elsif order == "L"
      $s_x -= $move[order]
    end
  # 状態が"r"の時
  elsif $direction == "r"
    if order == "F"
      $s_x += $move[order]
    elsif order == "R"
      $s_y -= $move[order]
    elsif order == "B"
      $s_x -= $move[order]
    elsif order == "L"
      $s_y += $move[order]
    end
  # 状態が"b"の時
  elsif $direction == "b"
    if order == "F"
      $s_y -= $move[order]
    elsif order == "R"
      $s_x -= $move[order]
    elsif order == "B"
      $s_y += $move[order]
    elsif order == "L"
      $s_x += $move[order]
    end
  # 状態が"l"の時
  elsif $direction == "l"
    if order == "F"
      $s_x -= $move[order]
    elsif order == "R"
      $s_y += $move[order]
    elsif order == "B"
      $s_x += $move[order]
    elsif order == "L"
      $s_y -= $move[order]
    end
  end
end


# 最初の座標
$s_x, $s_y = gets.split(" ").map(&:to_i)
# 向いている方向
$direction = "f"

# 上,右,下,左,の一歩で動く距離
d_f, d_r, d_b, d_l = gets.split(" ").map(&:to_i)
$move = {"F" => d_f, "R" => d_r, "B" => d_b, "L" => d_l}

# p $move
# p $move["R"]

# 命令の数
instructions_num = gets.to_i

# 命令取り込み
instructions = []
instructions_num.times do |i|
  instructions[i] = gets.chomp.split(" ")
end

# p instructions

# 命令の実行
instructions.each do |instruction|
  # p instruction
  type = instruction[0]
  order = instruction[1]

  # 命令が方向転換のとき
  if type == "t"
    turn_order(order)
  # 命令が移動の時
  elsif type == "m"
    move_order(order)
  end
end

# 結果表示
puts "#{$s_x} #{$s_y}"
