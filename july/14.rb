# 平日の朝、できるだけ長く寝ていたいと思ったあなたは、「何時に家を出発すれば遅刻せずに出社できるか？」ということを常々考えています。

# あなたの通勤ルートは次のようになっています。

# 1. 自宅から配座（ぱいざ）駅まで a 分間歩く。
# 2. 配座駅に着いた後、一番早く来た電車に b 分間電車に乗って儀野（ぎの）駅に到着する。
# 　(駅に到着してから電車に乗り込むまでの時間は考慮せず、駅に到着した時刻の電車にも乗り込めるものとします)
# 3. 儀野駅から会社まで c 分間歩く。

# 図

# あなたの会社では 8:59 までに出社すれば遅刻扱いにはなりません。 何時に自宅を出れば遅刻せずに出社できるでしょうか？
# このような時間の中で最も遅い時刻を求めるプログラムを書いてください。


input = gets.split.map(&:to_i)
train = gets.to_i

timer = []
timers = []
train.times do
    t = Time.local(2020, 1, 1, 0, 0)
    time = gets.split.map(&:to_i)
    t = t + (60 * 60 * time[0]) + (60 * time[1])
    t = t.strftime('%H:%M')
    timers << time
    timer << t
end

company = input[1] + input[2]




t1 = Time.local(2020, 1, 1, 8, 59)
t1 = t1 - (60 * company)
t1 = t1.strftime('%H:%M')
timer << t1
timer = timer.sort
aaa = timer.index(t1)

goal = aaa -1


t3 = Time.local(2020, 1, 1, 0, 0)
    sss = timers[goal]
    t3 = t3 + (60 * 60 * sss[0]) + (60 * sss[1]) - (60 * input[0])
    t3 = t3.strftime('%H:%M')
puts t3


