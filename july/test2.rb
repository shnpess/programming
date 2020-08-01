a = 1234567890

count = 1
sum = 0
while count < 10000000
    if a % count == 0
        sum += count
    end
    count += 1
end
p sum

# def divisor(num)
#     result = []
#     i = 1
#     while i <= num do
#       remainder = num % i
#       if remainder == 0
#         result << i
#       end
#       i += 1
#     end
#     return result
#   end

#   puts "約数を算出したい整数を入力してください"
#   num = gets.to_i
#   r = divisor(num)
#   puts r
#   puts "約数の数は#{r.length}です"
#   puts "約数の合計は#{r.sum}です"
