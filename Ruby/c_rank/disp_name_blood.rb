len = gets.to_i

name_blood = {}
len.times do
  name, blood = gets.chomp.split(" ")
  name_blood[name] = blood
end

name_blood.each do |k, v|
  puts "#{k} #{v}"
end