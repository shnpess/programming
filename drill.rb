# 配列の内部に、複数のユーザーの情報をハッシュとして持つ変数user_dataがあります。

user_data = [
  {
    user: {
        profile: {
            name: 'George'
        }
    }
  },
  {
    user: {
        profile: {
          name: 'Alice'
        }
    }
  },
  {
    user: {
        profile: {
            name: 'Taro'
        }
    }
  }
]
# user_dataを利用して、全てのユーザーの名前だけが出力されるようにRubyでコーディングしてください。
# ただし、出力結果は次のようになるものとします。

# ターミナル
# George
# Alice
# Taro

# ---------------------------解答--------------------------------------------

user_data.each  do |data|
   user_info = data[:user]
   user_prof = user_info[:profile]
   puts "#{user_prof[:name]}"
end


