n, m, k = gets.split(" ").map(&:to_i)

a  = Array.new(n)
n.times do |i|
  a[i] = gets.split(" ").map(&:to_i)
end

a.each do |card|
  score = 0
  card.each do |num|
    if num == k
      score += 1
    end
  end
  puts score
end