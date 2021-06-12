# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# アイテムの並び順配列
items_order = ["剣", "盾", "回復薬", "クリスタル"]

# ここから下を記述しよう
items_order.each do |items_name|
  puts "<img src = '#{items_img[items_name]}'><br>"
end