# 料理の品目,客の数
cook_num, customer_num = gets.split(" ").map(&:to_i)

# 100gあたりのカロリー
cuisine = []
cook_num.times do |i|
  cuisine[i] = gets.to_i
end

# 食べたg数
customer_eat = []
customer_num.times do |i|
  customer_eat[i] = gets.split(" ").map(&:to_i)
end

cals = Array.new(customer_num, 0)
customer_eat.each_with_index do |weight, i|
  cook_num.times do |j|
    cals[i] += (cuisine[j] * weight[j].to_f / 100).floor
  end
end

cals.each do |cal|
  puts cal
end