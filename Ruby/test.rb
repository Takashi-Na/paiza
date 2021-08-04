# 人参の数,基準糖度,許容誤差
num, standard_v, allowable_error = gets.split(" ").map(&:to_i)

# puts num,standard_v,allowable_error

# データ取得
carrots_info = []
num.times do |i|
  carrots_info[i] = gets.split(" ").map(&:to_i)
end

# p carrots_info

# 判定
mass = 0
n = 0
carrots_info.each_with_index do |carrot, i|
  # p carrot
  if standard_v - allowable_error <= carrot[1] && standard_v + allowable_error <= carrot[1]
    if mass < carrot[0]
      mass = carrot[0]
      n = i + 1
    end
  end
end

# 結果
if mass == 0
  puts "not found"
else
  puts n
end