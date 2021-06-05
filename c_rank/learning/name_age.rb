num_of_people = gets.to_i #人数の入力
line = []
lines = [] 

# 標準入力 (名前と年齢をスペースで区切り入力 例：tanaka 24)
i = 0
while i < num_of_people do
  line = gets.chomp.split(" ")
  lines << line
  i += 1
end

# 表示
i = 0
while i < num_of_people do
  age_int = lines[i][1].to_i + 1 #年齢に1加算
  age_str =age_int.to_s
  puts lines[i][0] + " " + age_str
  i += 1
end