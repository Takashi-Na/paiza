n, m = gets.split(" ").map(&:to_i)

sentence = gets.chomp.chars

sentence.each_with_index do |str, i|
  if (i + 1) >= n && (i + 1) <= m
    print str.upcase
  else
    print str
  end
end