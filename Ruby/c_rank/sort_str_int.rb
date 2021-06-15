len = gets.to_i

str_int = {}
len.times do
  k, v = gets.split(" ")
  str_int[k] = v.to_i
end

sorted_str_int = str_int.sort_by{|_, v| v}

sorted_str_int.each do |key, _|
  puts key
end