# 任意の文字列の最初の2文字を最後尾に持ってきて
# その文字を出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# left2('Hello') → 'lloHe'
# left2('java') → 'vaja'
# left2('Hi') → 'Hi'


word = gets.chomp
word = word.split("", 3).map(&:chomp)
word1 = word[0] + word[1]
new_word = []
new_word << word1
new_word << word[2]
p new_word.reverse.join
