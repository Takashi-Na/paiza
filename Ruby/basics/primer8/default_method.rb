# あらかじめ用意されているメソッド

puts "hello world"

line = gets.chomp.split(",")
p line

line.each do |player|
  puts "#{player}が荒野を歩いていた"
end