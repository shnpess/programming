# count = 1
# sum = 0
# while count < 30000
#     if count % 3 == 0 || count.include?("3")
#         sum += count
#     end
# end
# p sum

sum = 0
(1..30000).each do |k|
    if k % 3 == 0
      sum += k
    elsif k.to_s.include?("3")
      sum += k
    else
      puts "#{k}"
    end
  end
p sum
