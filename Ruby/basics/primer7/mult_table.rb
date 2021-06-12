# 九九の表を作成

def multi(x, y)
    return x * y
end

for i in 1..9
  for j in 1..9
    print multi(i, j)
    if j < 9
        print ", "
    end
  end
  puts ""
end