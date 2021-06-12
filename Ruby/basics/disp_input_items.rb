# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# ここから下を記述しよう
items_count = gets.to_i

while items_count > 0
  items_name = gets.chomp
  puts "<img src = '#{items_img[items_name]}'>"
  items_count -= 1
end