#配列の中身をループで表示する

enemies = ["スライム", "モンスター", "ゾンビ", "ドラゴン", "魔王"]
# ここに、要素をループで表示するコードを記述する

enemies.each_with_index do |enemy,i|
    puts "#{i+1}番目の#{enemy}が現れた！"    
end