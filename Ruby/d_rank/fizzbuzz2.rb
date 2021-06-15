input_num = gets.to_i

if input_num%15 == 0
    puts "Fizz Buzz"
elsif input_num%3 == 0
    puts "Fizz"
elsif input_num%5 == 0
    puts "Buzz"
else
    puts input_num
end