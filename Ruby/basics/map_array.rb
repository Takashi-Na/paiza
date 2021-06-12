# 各要素を3倍にして新しい配列を作成する

numbers = [12, 34, 56, 78, 90]

# ここに、各要素を3倍にして新しい配列を作成するコードを記述する
numbers2 = numbers.map do |num|
  num * 3
end

p numbers2