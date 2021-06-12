# ループでハッシュの値を出力しよう

skills = {job: "戦士", power: 100, magic: 200,gold: 380, luck: 1000}
skills.each do |key, item|
  puts "#{key} = #{item}"
end
