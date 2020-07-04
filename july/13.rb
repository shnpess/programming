# あなたは恋愛相談会社 PAIZA のプログラマーです。今回、あなたは二人の相性占いをするプログラムを作ることにしました。

# あなたが作成するプログラムは、まず、以下の流れで「二人の相性」を求めます。

# 1. 相性をチェックする二人の名前を並べた英小文字からなる文字列を入力します。
# 2. "a" を 1、"b" を 2、...、"z" を 26 として、文字列を数列に変換します。この数列を A とします。
# 3. 数列 A の隣り合う 2 つの数を足して前から順番に並べた新しい数列 A' を作り、これを新たに A とします。このとき、A の要素の大きさが 101 を超えていた場合、その要素から 101 を引きます。
# 4. 数列 A の要素数が 1 になるまで 3. の手順を繰り返します。A の要素数が 1 となったとき、残った要素の値を「二人の相性」とします。

# 名前の並べ方は 2 通りあります。そこで、あなたは相性占いの結果として、 2 通りの方法で計算した「二人の相性」のうち大きい方を出力するようにプログラムを組むことにしました。

# たとえば、pa さんと iza さんの名前を "paiza" として並べたとき、「二人の相性」は 78 になります。

# 図1


# iza さんの名前を先に持ってきて "izapa" とすると、「二人の相性」は 83 になります。

# 相性占いをする二人の人物の名前が与えられたとき、相性占いの結果を出力するプログラムを作成してください。

name = gets.split.map(&:chomp)
r_name = name.reverse

name = name.join
r_name = r_name.join

name = name.split("").map(&:chomp)
r_name = r_name.split("").map(&:chomp)

new_name = []
name.each do |n|
    n = (n.ord.to_i) - 96
    new_name << n
end

(new_name.size - 1).times do
count = 0
name = []
(new_name.size - 1).times do
    num = new_name[count] + new_name[count + 1]
    if num > 101
        num = num -101
    end
    name << num
    count += 1
end
new_name = name

end




new_r_name = []
r_name.each do |n|
    n = (n.ord.to_i) - 96
    new_r_name << n
end

(new_r_name.size - 1).times do
count = 0
r_name = []
(new_r_name.size - 1).times do
    num = new_r_name[count] + new_r_name[count + 1]
    if num > 101
        num = num -101
    end
    r_name << num
    count += 1
end
new_r_name = r_name

end

if new_name[0] < new_r_name[0]
    puts new_r_name
else
    puts new_name
end
