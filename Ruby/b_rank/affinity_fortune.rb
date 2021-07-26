a, b = gets.chomp.split(" ")

# p a,b

alph_array = ("a".."z").to_a
alph = {}

alph_array.each_with_index do |value, i|
  alph[value] = i+1
end
# p alph


score = []
2.times do |i|
  if i == 1
    adapt_name = a + b
  else
    adapt_name = b + a
  end
  
  # p adapt_name
  
  adapt_name_array = adapt_name.split("")
  
  # p adapt_name_array
  int_adapt_name = []
  adapt_name_array.each_with_index do |str, i|
    int_adapt_name[i] = alph[str]
  end
  
  a_array = int_adapt_name
  times = a_array.length
  len = a_array.length
  
  # p a_array
  
  b_array = []
  
  (times-1).times do
    for i in 0..len do
      if a_array[i + 1].nil?
        b_array[i] = nil
        break
      end
      num = a_array[i] + a_array[i + 1]
      if num >= 101
        b_array[i] = num - 101
      else
        b_array[i] = num
      end
    end

    # p b_array

    b_array.delete_at(len-1)

    a_array = b_array
    len = a_array.length
  end

score.push(a_array[0])
end

puts score.max