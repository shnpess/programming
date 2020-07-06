def first_two(word)
    input = gets.chomp
    input = input.split("").map(&:chomp)
    input = input[0..1].join
    p input
end
first_two("hello")

input = gets.chomp
input = input.split("").map(&:to_i)


if input.last <= 2 || input.last >= 8
  puts "True"
else
  puts "False"
end


def speed(num)
  p num
  status = ["チケットなし","小チケット","大チケット"]
    if num <= 60
      ticket = 0
    elsif num >= 61 && num <= 80
      ticket = 1
    elsif num >= 81
      ticket = 2
    end
    p status[ticket]
end

speed(82.5.round(0))
