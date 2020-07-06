# https://paiza.jp/works/challenges/227/retry

input = gets.to_i

count = 0
arrays = []
input.times do
    input2 = gets.split.map(&:to_i)

    unless input2.include?(0)
        count = input2.sum
    end
    arrays << input2
end
oh = 0
arrays.each do |a|
    if a.include?(0)
        oh = a.index(0)
    end
end
index_sum = 0


arrays.each do |a|
    index_sum += a[oh]
end


arrays.each do |a|
  if a.count(0) == 1
      answer = count - a.sum
      w = a.index(0)
      a[w] = answer

  elsif a.count(0) == 2
    answer = count - index_sum
    a[oh] = answer
    oh = a.index(0)
    answer = count - a.sum
    a[oh] = answer
  end
end


arrays.each do |a|
  puts a.join(' ')
end
