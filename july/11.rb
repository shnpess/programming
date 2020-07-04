# https://paiza.jp/challenges/368/show

count = gets.split.map(&:to_i)

self_score = 100 / count[1]

count[0].times do
  score = gets.split.map(&:to_i)
  my_score = self_score * score[1]
  if score[0] > 9
      my_score = my_score * 0
  elsif score[0] > 0
      my_score = my_score *0.8
  end

  if my_score >= 80
    puts "A"
  elsif my_score >= 70
    puts "B"
  elsif my_score >= 60
    puts "C"
  else
    puts "D"
  end
end
