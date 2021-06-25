# 

puts 1
begin
  number = 1
  answer = 100 / number
    puts answer2
rescue NameError => e
  puts "未定義の変数を呼び出しています"
  p e
rescue ZeroDivisionError => e
  puts "0では割り算できません"
  p e
rescue Exception => e
  # 例外を補足すると起動する
  # Exceptionはスーパークラス
  puts "予期せぬエラーが発生しました。"
  p e
ensure
  puts 2
end
