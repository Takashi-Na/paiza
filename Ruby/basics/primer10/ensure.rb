def test_exception(number)
  puts 2
  begin
    puts 3
    answer = 100 / number
    return answer
    puts 4
  rescue ZeroDivisionError => e
    puts 5
    raise e
  ensure
    puts 6
  end
end


puts 1
begin
  answer = test_exception(1)
  puts 7
rescue ZeroDivisionError => e
  puts 8
  p e
end
