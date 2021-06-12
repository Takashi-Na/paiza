# 2次元配列で地図を表示する

landmap = Array.new(10).map{Array.new(20,"森")}
landmap[0][0] = "城"
landmap[0][19] = "町"
landmap[9][19] = "町"
landmap.each_with_index do |line, i|
    print "#{i}:"
    line.each_with_index do |area, j|
      if (i%2 == 0 || j%3 == 0) && area == "森"
        print "＋"
      else
        print area
      end
    end
    puts ""
end