array = ["HND", "NRT", "KIX", "NGO", "NGO", "NGO", "NGO", "NGO"]
uniq_array = array.uniq

# p array
# p uniq_array

duplicate_count = (array.length - uniq_array.length) + 1

p duplicate_count


# # 回答例
# array = %w[HND NRT KIX NGO NGO NGO NGO NGO]
# count = {}

# array.each do |element|
#   # ハッシュを呼び出せればtrue 呼び出せなければfalse
#   if count[element]
#     count[element] = count[element] + 1
#   else
#     count[element] = 1
#   end
# end

# count.each do |_key, value|
#   if value != 1
#   puts value
#   end
# end