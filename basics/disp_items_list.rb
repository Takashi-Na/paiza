# RPGのアイテム一覧を再現２

# 画像用ハッシュ
items_img = {
    "剣" => "http://paiza.jp/learning/images/sword.png",
    "盾" => "http://paiza.jp/learning/images/shield.png",
    "回復薬" => "http://paiza.jp/learning/images/potion.png",
    "クリスタル" => "http://paiza.jp/learning/images/crystal.png"
}

# アイテムの並び順配列
items_order = ["クリスタル", "盾", "剣", "回復薬", "回復薬", "回復薬"]
# p items_img
# p items_order

# アイテム名を取り出す
items_order.each do |items_name|
    # 画像ファイルを取り出す
    puts "<img src = '#{items_img[items_name]}'>"
    puts "#{items_name}<br>"
end