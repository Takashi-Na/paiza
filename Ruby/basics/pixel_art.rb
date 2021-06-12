# ドットで文字を出力しよう

letter_A = [[0,0,1,1,0,0],
            [0,1,0,0,1,0],
            [1,0,0,0,0,1],
            [1,1,1,1,1,1],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1]]

# ここに、ドットを表示するコードを記述する
letter_A.each do |line|
    line.each do |char|
      if line == 1
        print "@"
      else
        print " "
      end
    end
    puts ""
end