len = gets.to_i

safe = Array.new(len)
len.times do |i|
  safe[i] = gets.split(" ").map(&:to_i)
end

len.times do |i|
  gold = safe[i][0]
  silver = safe[i][1]

  safe[i][0] = silver
  safe[i][1] = gold
end

safe.sort!.reverse!

safe.each do |metals|
  metals[0], metals[1] = metals[1], metals[0]
  puts metals.join(" ")
end