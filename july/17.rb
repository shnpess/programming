
# 配列の中に複数の数字を入れて9だけカウントし
# 「配列の中には9が3個です」と
# 出力させるメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 呼び出し方
# array_count9(nums)

# 出力例
# array_count9([1, 2, 9]) → 1
# array_count9([1, 9, 9]) → 2
# array_count9([1, 9, 9, 3, 9]) → 3

def array_count9(nums)
    p nums.select { |num| num ==9 }.length
end
array_count9([1, 2, 9, 9])





