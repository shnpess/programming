# https://paiza.jp/works/challenges/199/retry

input = gets.split.map(&:to_i)
input2 = gets.split.map(&:to_i)
arrays = []
input[0].times do
   www = gets.chomp
   www = www.split("").map(&:chomp)
   arrays << www
end

as_count = input2[0] - 1
a_count = input2[1] - 1
hougak = ["北", "東", "南", "西"]
h_count = 0

while
house = arrays[as_count]
    if house[a_count] == "."
      h_count += 1
      house[a_count] = "*"
    else
      h_count -= 1
      house[a_count] = "."
    end

    if h_count > 3
      h_count = 0
    elsif h_count < 0
      h_count = 3
    end

  if hougak[h_count] == "西"
      a_count -= 1

  elsif hougak[h_count] == "東"
      a_count += 1

  elsif hougak[h_count] == "北"
      as_count -= 1

  elsif hougak[h_count] == "南"
      as_count += 1
  end

if a_count > 4 || a_count < 0
break

elsif as_count > 4 || as_count < 0
break

end
end


arrays.each do |a|
    puts a.join
end





