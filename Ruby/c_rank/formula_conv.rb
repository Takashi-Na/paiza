$mark = []

# 標準入力＆分解
def input_disassembly
  input_line = gets.chomp
  formulas = input_line.split("+")

  formulas.each_with_index do |formula, i|
    $mark[i] = formula.split("")
  end
end

# 計算と答え表示
def calc_ans
  ans = 0
  $mark.each do |num|
    num.each do |parts|
      if parts == "/"
        ans += 1
      else
        ans += 10
      end
    end
  end
  return ans
end


input_disassembly()
puts calc_ans()