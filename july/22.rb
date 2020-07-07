# https://paiza.jp/challenges/96/show
input = gets.split.map(&:to_i)
shigemi = (1..input[0]).to_a
usagi = []

input[1].times do
    usa = gets.to_i
    usagi << usa
end
input[2].times do
count = 0
    usagi.length.times do
        while
            usagi[count] += 1
            if usagi[count] > shigemi.last
                usagi[count] = 1
            end

            if (usagi.count - usagi.uniq.count) == 0
                break
            end
        end
        count += 1
    end
end
puts usagi
