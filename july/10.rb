def trouble(a, b)
  if a == "true" && b== "true"
    puts "TRUE"
  elsif a == "false" && b== "false"
    puts "TRUE"
  else
    puts "FALSE"
  end
end

word = ["true", "false"]
a = word.sample
b = word.sample

p a
p b

trouble(a, b)
