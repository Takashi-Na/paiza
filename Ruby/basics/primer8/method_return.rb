class Item
  @@tax = 1.08
  def initialize(price, quantity)
    @price = price
    @quantity = quantity
  end

  def total()
    (@price * @quantity * @@tax).round
  end
end

apple = Item.new(150, 15)
puts "りんごの合計金額は#{apple.total()}円です。"

orange = Item.new(85, 30)
puts "オレンジの合計金額は#{orange.total()}円です。"