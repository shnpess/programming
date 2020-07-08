input = gets.to_i
title = gets.split.map(&:chomp)
input2 = gets.to_i

name  = []
input2.times do
    nm = gets.split.map(&:chomp)
    name << nm
end


tlength = []
title.each do |t|
    tlength << t.length
end

count = 0

super_length = []

input.times do
hlength = []
name.each do |h|
    hlength << h[count].length
end
    count += 1
super_length << hlength.max
end


a_length = []
count = 0
input.times do
    if super_length[count] > tlength[count]
        a_length << super_length[count]

    elsif super_length[count] < tlength[count]
        a_length << tlength[count]
    elsif super_length[count] == tlength[count]
        a_length << tlength[count]
    end
    count += 1
end

n_title = []
count = 0
title.each do |t|
    space = a_length[count] - t.length + 1
    t = "| #{t}"
    n_title << t
    a_space = " " * space
    n_title << a_space
    count += 1
end
n_title << "|"
puts n_title.join


count = 0
str = []
input.times do
    strs = "|" + "-" * (a_length[count] + 2)
    str << strs
    count += 1
end
str << "|"
puts str.join



count = 0
name.length.times do
    n_title = []
    name[count].each do |t|
        n_title << t
    end

    m_title = []
    counts = 0
    n_title.each do |t|
    space = a_length[counts] - t.length + 1
    t = "| #{t}"
    m_title << t
    a_space = " " * space
    m_title << a_space
    counts += 1
end
m_title << "|"
puts m_title.join


    count += 1
end
