wind_time, first_x, first_y = gets.split(" ").map(&:to_i)

coordinate = []
coordinate.push([first_x, first_y])

# p coordinate

wind = []
wind_time.times do |i|
  wind[i] = gets.split(" ").map(&:to_i)
end

# p wind
count = 1
wind.each do |add_coordinate|
  coordinate_x = coordinate[count-1][0] + add_coordinate[0]
  coordinate_y = coordinate[count-1][1] + add_coordinate[1]

  coordinate.push([coordinate_x, coordinate_y])
  if coordinate[count][1] <= 0
    break
  end
  count += 1
end

max = coordinate[0][0]
coordinate.each do |i|
  if i[0] > max
    max = i[0]
  end
end

puts max