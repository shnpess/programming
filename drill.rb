# https://paiza.jp/works/mondai/prob60/total_value_9?language_uid=ru

# 解答

count = gets.to_i

sum = 0

count.times do
  num = gets.split.map(&:to_i)
  if num[0] == num[1]
     sum += num[0] * num[1]
  else
     sum += (num[0] + num[1])
  end
end

puts sum