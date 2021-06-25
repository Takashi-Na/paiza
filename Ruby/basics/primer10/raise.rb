# 意図的に例外を起こす

puts 1
begin
    puts 2
    raise Exception.new("意図的な例外")
    puts 3
    answer = 100 / number
    puts answer
rescue Exception => e
    puts "予期せぬエラーが発生しました"
    p e
    puts e.message
ensure
    puts 4
end
