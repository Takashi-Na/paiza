# 西暦年と平成年の対応表を作る
# 1989年から2016年までをループで出力
# ループ内で、各西暦年を平成年に変換

for seireki in 1989..2016
    print "西暦#{seireki}年は、"
    heisei = seireki - 1988
    puts "平成#{heisei}年です。"
end