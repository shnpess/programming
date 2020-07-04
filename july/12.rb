count = gets.to_i
p count
count.times do
   input =gets.chomp
   input = input.split("").map(&:chomp)
   p input
   if input.last == "s" || input.last == "o" || input.last == "x"
       puts "es"
       input[input.length] = "es"
       puts input.join
   elsif input[input.length - 2] == "s" && input.last == "h"
       puts "es"
       input[input.length] = "es"
       puts input.join
   elsif input[input.length - 2] == "c" && input.last == "h"
       puts "es"
       input[input.length] = "es"
       puts input.join
   elsif input.last == "f"
       puts "rm es"
       input.pop
       input[input.length] = "ves"
       puts input.join
   elsif input[input.length - 2] == "f" && input.last == "e"
       puts "rm es"
       input.pop(2)
       input[input.length] = "ves"
       puts input.join
   elsif input.last == "y" && (input[input.length - 2] != "a" && input[input.length - 2] != "i" && input[input.length - 2] != "u" && input[input.length - 2] != "e" && input[input.length - 2] != "o")
       input.pop
       input[input.length] = "ies"
       puts input.join

   else
       input[input.length] = "s"
       puts input.join
   end

end
