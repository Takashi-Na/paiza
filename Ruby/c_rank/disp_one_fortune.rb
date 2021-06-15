user = gets.chomp
len = gets.to_i

name_blood = {}
len.times do
  name, blood = gets.chomp.split(" ")
  name_blood[name] = blood
end

fortune_len = gets.to_i
blood_fortune = {}
fortune_len.times do
  blood, fortune = gets.chomp.split(" ")
  blood_fortune[blood] = fortune
end

puts blood_fortune[name_blood[user]]