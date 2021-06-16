$array = []

# 盤面の取り込み
5.times do |i|
  $array[i] = gets.chomp.split('')
end

# 結果判定メソッド
def aligned?(o, x)
  if o == 5
    'O'
  elsif x == 5
    'X'
  else
    'D'
  end
end

# 横の判定を行うメソッド
def line_aligned?
  result = ''

  $array.each do |line|
    o = 0
    x = 0
    (0..4).each do |i|
      if line[i] == 'O'
        o += 1
      elsif line[i] == 'X'
        x += 1
      else
        break
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end
  return result
end

# 縦の判定を行うメソッド
def column_aligned?
  result = ''

  (0..4).each do |i|
    o = 0
    x = 0
    $array.each do |row|
      if row[i] == 'O'
        o += 1
      elsif row[i] == 'X'
        x += 1
      else
        break
      end

      result = aligned?(o, x)
      if result != 'D'
        break
      end
    end
  end
  return result
end


# 斜めの判定
# time=1の場合、右斜めの判定 time=2の場合、左斜めの判定
def diagonal_aligned?
  result = ''

  (1..2).each do |time|
    o = 0
    x = 0

    (0..4).each do |i|
      if time == 1
        if $array[i][i] == 'O'
          o += 1
        elsif $array[i][i] == 'X'
          x += 1
        else
          break
        end
      else
        if $array[i][4 - i] == 'O'
          o += 1
        elsif $array[i][4 - i] == 'X'
          x += 1
        else
          break
        end
      end

      result = aligned?(o, x)
      break if result != 'D'
    end
  end
  return result
end


# 結果表示
if line_aligned? == 'O' || column_aligned? == 'O' || diagonal_aligned? == 'O'
  puts 'O'
elsif line_aligned? == 'X' || column_aligned? == 'X' || diagonal_aligned? == 'X'
  puts 'X'
else
  puts 'D'
end