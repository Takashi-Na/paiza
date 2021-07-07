# 山のマス目の数
num = gets.to_i

mountain_heights = []
height_array = []
mountain_peaks = []

# num分の列を取り込む
num.times do |i|
  mountain_heights[i] = gets.split(" ").map(&:to_i)
end

# 山頂の判別
mountain_heights.each_with_index do |heights, i|
  heights.each_with_index do |height, j|
    # 上の高さ
    if i == 0
        top_height = 0
    else
        top_height = mountain_heights[i - 1][j]
    end
    
    # 下の高さ
    if i == num - 1
        bottom_height = 0
    else
        bottom_height = mountain_heights[i + 1][j]
    end
    
    # 左の高さ
    if j == 0
        left_height = 0
    else
        left_height = mountain_heights[i][j - 1]
    end
    
    # 右の高さ
    if j == num - 1
        right_height = 0
    else
        right_height = mountain_heights[i][j + 1]
    end
    
    # デバック
    # puts "i:#{i}"
    # puts "j:#{j}"
    # puts "高さ:#{height}"
    # puts "#{top_height},#{bottom_height},#{left_height},#{right_height}"
    
    if height > top_height && height > right_height && height > left_height && height > bottom_height
      mountain_peaks << height
    end
  end
end

# 降順にソート
sorted_peaks = mountain_peaks.sort.reverse

# 表示
puts sorted_peaks