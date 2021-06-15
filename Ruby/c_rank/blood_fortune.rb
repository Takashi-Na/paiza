len = gets.to_i

# hash:名前と血液型
name_blood = {}
len.times do
  name, blood = gets.chomp.split(" ")
  name_blood[name] = blood
end

fortune_len = gets.to_i
# hash:血液型と占い結果
blood_fortune = {}
fortune_len.times do
  blood, fortune = gets.chomp.split(" ")
  blood_fortune[blood] = fortune
end

name_blood.each do |n, b|
  puts "#{n} #{blood_fortune[b]}"
end