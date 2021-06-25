# 簡易的な例外処理

puts 1
begin
  # エラーが発生する可能性のある処理
  num = 0
  ans = 100 / num
  puts ans
rescue ZeroDivisionError => e
  # 例外ハンドラ
  # エラーが発生した場合の処理
  puts "0では割り算できません"
  # puts e.message
  # puts e.backtrace
  STDERR.puts e.backtrace
rescue NameError => e
  puts "未定義の変数を呼び出しています"
  p e
else
  # エラーが発生しない場合の処理
ensure
  # エラーの発生の有無にかかわらず行う処理
  puts 2
end