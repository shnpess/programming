
def fizzbazz(count)
  num = 1
  while count >= num
    if num % 3 == 0 && num % 5 == 0
      puts "#{num}:fizzbuzz"
    elsif num % 5 == 0
      puts "#{num}:buzz"
    elsif num % 3 == 0
      puts "#{num}:fizz"
    else
      puts "#{num}:none"
    end
  num += 1
  end
end

input = gets.to_i
fizzbazz(input)