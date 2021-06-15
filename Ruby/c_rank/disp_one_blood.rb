name = gets.chomp

len = gets.to_i

name_blood = {}
len.times do
  n, b = gets.chomp.split(" ")
  name_blood[n] = b
end

puts "#{name} #{name_blood[name]}"