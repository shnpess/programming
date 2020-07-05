# 0時から翌朝7時までにオウムに喋られると問題があるのでその場合は「NG」、
# それ以外は「OK」と出力するメソッドを作成します。
# オウムが喋る時をture、喋らない時をfalseと入力することにし、時刻も同時に入力します。

# 呼び出し方：
# parrot_trouble(talking, hour)

# 出力例：
# parrot_trouble(true, 6) → NG
# parrot_trouble(true, 7) → OK
# parrot_trouble(false, 6) → OK
# parrot_trouble(false, 7) → OK


def parrot(taiking, hour)
    range = (1..7)
    range2 = 20..23
    if range.include?(hour) || range2.include?(hour)
      puts "NG"
    else
      puts "OK"
    end
end

parrot("aaa", rand(24))
