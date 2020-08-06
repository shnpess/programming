
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
# https://paiza.jp/works/challenges/389/retry
input = gets.to_i

shoes = []
input.times do
   kutu = gets.split.map(&:chomp)
   shoes << kutu
end

type = []
shoes.each do |s|
    type << s[0]
end
type = type.uniq



answer = []
count = 0
type.length.times do
    aaa = []
    shoes.each do |s|
        if s[0] == type[count]
            aaa << s
        end
    end

    r = []
    l = []
    aaa.each do |a|
        if a[1] == "R"
        r << a
        elsif a[1] == "L"
        l << a
        end
    end

    if r.length < l.length
        answer << r.length
    else
        answer << l.length
    end
    count += 1
end
p answer.sum
