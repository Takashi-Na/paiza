blood_type = gets.chomp

len = gets.to_i

blood_fortune = {}
len.times do
  blood, fortune = gets.chomp.split(" ")
  blood_fortune[blood] = fortune
end

puts blood_fortune[blood_type]