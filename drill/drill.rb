input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
num = gets.to_i
if input.index(num)
   index_number = input.index(num)
   puts "#{num}は#{index_number}番目にあります"
else
   puts "#{num}はありません"
end




