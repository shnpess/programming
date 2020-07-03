# あなたは、株の売買でのお金儲けを考えています。
# N 日の間、1 日に一度株価をチェックし、以下のルールに従い売買をします。

# ・株価が c_1 円以下の場合、1 株買う
# ・株価が c_2 円以上の場合、持ち株「を」すべて売る
# ・株価が c_1 円、c_2 円の間の場合は、何もしない
# ・N 日目には、上記を行わず持ち株をすべて売る

# 図1

# N 日目に持ち株をすべて売ったあとでの損益を出力してください。ただし、入力例 2 のように損益がマイナスになる場合があることに注意してください。

# --解答--

num = gets.split.map(&:to_i)
stock = []
sum = 0
count = 1

num[0].times do
    money = gets.to_i
    if num[1] >= money && num[0] != count
        stock << money
        
    elsif num[2] <= money && stock.any?
        stock.length.times do
            stock_count = 0
            sum += money - stock[stock_count]
            stock.shift
            stock_count += 1
        end
        
    elsif num[0] == count
        stock.length.times do
            stock_count = 0
            sum += money - stock[stock_count]
            stock.shift
            stock_count += 1
        end
    end
    count += 1
end

p sum