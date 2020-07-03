# https://paiza.jp/works/challenges/337/retry


count = gets.to_i
count.times do
  num = gets.chomp
  new_num = num.split("").map(&:to_i)
  new_num2 = new_num.group_by(&:itself)
  new_num3 = new_num2.values
  
  if new_num3.length == 1
      puts "Four Card"
      elsif new_num3.length == 4
      puts "No Pair"
      elsif new_num3.length == 3
      puts "One Pair"
      elsif  new_num3.length == 2 && new_num3[0].length == 3 || new_num3[1].length == 3
      puts "Three Card"
  else
      puts "Two Pair"
  end
end
