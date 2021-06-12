# 読み込んだ複数行を出力する

while line = gets
	line.chomp!
	puts "#{line}が現れた"
end