
# https://paiza.jp/challenges/69/show

input = gets.split.map(&:to_i)


nums = []
int = []
input[0].times do
   num =  gets.split.map(&:to_i)
   nums << num

end
   count = 0
      nums.each do |n|
          counts = 0
         (input[0] / input[1]).times do
         aa =n[counts,input[1]].sum
         int << aa
         counts += input[1]
         end
      end
      count += 2


int = int.each_slice(input[0] / input[1]).to_a


answer = []

count = 0
(input[0] / input[1]).times do
ppp = []
int.each do |i|
    ppp << i[count]
end

ppp = ppp.each_slice(input[1]).to_a


ppp.each do |pp|

    ccc = pp.sum / (input[1] ** 2)
    answer << ccc
end
count += 1
end

answer = answer.each_slice(input[0] / input[1]).to_a


count = 0
answer.length.times do
answers = []
answer.each do |a|
    answers << a[count]
end
puts answers.join(' ')
count += 1
end
