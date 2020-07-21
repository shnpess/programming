input = gets.split.map(&:to_i)

pan = []
input[0].times do
   input2 = gets.split.map(&:to_i)
   pan << input2
end


price = []
kosu = []

pan.each do |p|
    price << p[0]
    kosu << p[1]
end


input[1].times do
count = 0
    input3 = gets.split.map(&:chomp)

    if input3[0] == "buy"
        input3.shift
        n_price = []
        input3.length.times do
        if kosu[count].to_i - input3[count].to_i >= 0
           kosu[count] = kosu[count].to_i - input3[count].to_i

           www = price[count] * input3[count].to_i
           n_price << www
           count += 1
          else
            www = -1
            n_price << www
          end
       end
       if n_price.include?(-1)
        puts "-1"
        else
        puts n_price.sum
        end
           end

    if input3[0] == "bake"
        counts = 0
        input3.shift()
        input3.length.times do
            kosu[counts] = kosu[counts].to_i + input3[counts].to_i
            counts += 1
        end
    end
end

