# ハッシュを値で昇順にソートする

math = {"あだち" => 40, "いいだ" => 12, "えんどう" => 99}
# この下で、ハッシュを値でソートして出力しよう

p math.sort_by{|k, v| v}