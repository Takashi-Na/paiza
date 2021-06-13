num = gets.to_i

str = gets.chomp.split("")

if num < str.size
  puts "#{str[num-1]} #{str[num]}"
end

# 問題文をよく読んで解くように