# Here your code !
# ハッシュにシンボルを使う

enemies1 = {"ザコ" => "スライム","中ボス" => "ドラゴン", "ラスボス" => "魔王"}
p enemies1
p enemies1["ザコ"]

enemies = {zako: "スライム", boss:"ドラゴン",king: "魔王"}
p enemies
p enemies[:king]

enemies.each do |level, enemy|
    puts "#{level}の#{enemy}が、現れた!"
end