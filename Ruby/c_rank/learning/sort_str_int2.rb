len = gets.to_i

pair = {}
len.times do
  k, v = gets.chomp.split(" ")
  if pair[k]
    pair[k] += v.to_i
  else
    pair[k] = v.to_i
  end
end

# p pair

# sort(降順)
sorted_pair = pair.sort_by{|_,v| v}.reverse!

# 出力
sorted_pair.each do |k, v|
  puts "#{k} #{v}"
end