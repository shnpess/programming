# 1行目に行数を表す整数 n、続く n 行の各行で「文字」と「整数」の組が空白区切りで入力されます。
# n 個の組を、「整数」の値で昇順に並べ変え、「文字」を出力してください。

# ▼　下記解答欄にコードを記入してみよう

# 入力される値
# 入力は以下のフォーマットで与えられます。

# n
# S_1 D_1
# S_2 D_2
# ...
# S_i D_i
# ...
# S_n D_n

# S_i は「文字」で、D_i は「整数」です。
# 入力される文字 S_i は、同じ文字が複数入力されることはなく、整数 D_i も同様です。


# 入力値最終行の末尾に改行が１つ入ります。
# 文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
# 期待する出力
# n 個の組を、「整数」の値で昇順に並べ変え、「文字列」を1行ずつ出力してください。

# 解答


count = gets.to_i

sort = {}
count.times do
  word = gets.split.map(&:chomp)
  sort[word[1].to_i] = word[0] 
end

p sort
sorts = sort.sort



sort_count = sorts.count

sum = 0
sort_count.times do
    answer = sorts[sum]
    puts answer[1]
    sum += 1
end
