len = gets.to_i

data = Array.new(len)
len.times do |i|
  data[i] = gets.split(" ")
end

search = gets.chomp

len.times do |i|
  if data[i][0] == search
    puts data[i][1]
  end
end



# # hashを使うケース
# n = gets.to_i

# properties = {}
# n.times do
#   s, a = gets.split(' ')
#   properties[s] = a.to_i
# end

# s = gets
# puts properties[s]