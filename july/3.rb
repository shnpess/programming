# シーザー暗号と呼ばれる暗号があります。これはアルファベットをある文字数分ずらすという暗号方式で、例えば「a」を２文字分ずらす（進める）と「c」になります。

# 「frqjudwxodwlrq」という文字列があり、これを３文字ずらす（戻す）と復号できることがわかっています。それを実現させるコードを記述してください。

char = "frqjudwxodwlrq"

new_char = char.split("").map(&:chomp)
cong = []
new_char.each do |c|
  ration = (c.ord - 3).chr
  cong << ration
end

puts cong.join