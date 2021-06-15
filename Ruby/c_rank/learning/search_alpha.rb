x = gets.chomp
y = gets.chomp
c = gets.chomp

if x <= y
  if (x <= c) && (c <= y)
    puts "true"
  else
    puts "false"
  end
else
  puts "false"
end