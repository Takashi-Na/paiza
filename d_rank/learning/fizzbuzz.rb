input_num = gets.to_i

i = 1
while i <= input_num
    if i%15 == 0
        puts "Fizz Buzz"
    elsif i%3 == 0
        puts "Fizz"
    elsif i%5 == 0
        puts "Buzz"
    else
        puts i
    end
    i += 1
end