input = gets.split.map(&:to_i)

field = []


input[0].times do
    width = "." * input[1]
    width = width.split("").map(&:chomp)
    field << width
end




input[2].times do
    input2 = gets.split.map(&:to_i)
    input2_last = input2[1] + input2[2]

count = 0
while true do
if  field[count][input2[2]...input2_last].include?("#")
    break
elsif count == (input[0] - 1)
    count += 1
    break
else
    count += 1
end
end



input2[0].times do
field[count - 1][input2[2]...input2_last] = field[-1][input2[2]...input2_last].fill("#")
count -= 1
end

end

field.each do |f|
    puts f.join
end

