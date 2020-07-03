# https://paiza.jp/challenges/357/show

hwx = gets.split.map(&:to_i)

word = []

hwx[0].times do
    str = gets.chomp
    word << str
end
new_word = word.join
new_word = new_word.scan(/.{1,#{hwx[2]}}/)
new_word.each do |n|
    puts n
end