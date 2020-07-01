# https://paiza.jp/works/mondai/prob60/5_or_more_9?language_uid=ruby

# 解答

count = gets.to_i

sum = 0
count.times do
  num = gets.to_i 
  if num >= 5
    sum += num
  end
end

puts "#{sum}"