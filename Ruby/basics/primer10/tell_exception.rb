def test_exception(num)
  puts 2
  begin
    puts 3
    ans = 100 / num
    return ans
    puts 4
  rescue => e
    puts 5
    raise e
  end
  puts 6
end

puts 1
begin
  ans = test_exception(0)
  puts 7
rescue ZeroDivisionError=> e
  puts 8
  puts e
end