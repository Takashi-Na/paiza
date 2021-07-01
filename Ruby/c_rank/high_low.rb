# def input_player
#   player = []
#   input = gets.chomp
#   player = input.split(" ")

#   return player
# end

# 親カード
input = gets.chomp.split(" ")
a = input[0].to_i
b = input[1].to_i

# 参加人数
len = gets.to_i

# 判定
len.times do
  player = []
  input = gets.chomp
  player = input.split(" ")
  
  if a > player[0].to_i
    puts "High"
  elsif a == player[0].to_i
    if b < player[1].to_i
      puts "High"
    else
      puts "Low"
    end
  else
    puts "Low"
  end
end