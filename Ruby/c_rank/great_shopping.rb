# 商品数の取り込み
len = gets.to_i

# ハッシュ生成
item_price = {0 => 0, 1 => 0, 2 => 0, 3 => 0}

# データ取り込み
len.times do |i|
  item, price = gets.split(" ").map(&:to_i)
  item_price[item] += price
end

# # デバック
# item_price.each do |key, value|
#   puts "#{key} #{value}"
# end

# 各ポイント計算
food_point = item_price[0] / 100 * 5
books_point = item_price[1] / 100 * 3
clothing_point = item_price[2] / 100 * 2
other_point = item_price[3] / 100 * 1

# 合計ポイント計算
total_point = food_point +books_point + clothing_point + other_point

# 表示
puts total_point


# # 商品数取り込み
# len = gets.to_i

# # 商品の分類と料金を配列に格納
# item_price_array = []
# len.times do |i|
#   item_price_array[i] = gets.split(" ").map(&:to_i)
# end

# # 初期化
# food = 0
# books = 0
# clothing = 0
# other = 0

# # ジャンルごとに分類わけして加算
# item_price_array.each do |item_price|
#   if item_price[0] == 0
#     food += item_price[1]
#   elsif item_price[0] == 1
#     books += item_price[1]
#   elsif item_price[0] == 2
#     clothing += item_price[1]
#   elsif item_price[0] == 3
#     other+= item_price[1]
#   end
# end

# # 各ポイント計算
# food_point = food / 100 * 5
# books_point = books / 100 * 3
# clothing_point = clothing / 100 * 2
# other_point = other / 100 * 1

# # トータル計算
# total_point = food_point + books_point + clothing_point + other_point

# # 結果表示
# puts total_point