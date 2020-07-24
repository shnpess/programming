@staffs = []
@month = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
def name_registor
    puts "何名登録しますか??"
    staff_count = gets.to_i

    count = 1
    staff_count.times do
    @staff = {}
    puts "#{count}人目の名前を入力してください"
    @staff[:name] = gets.chomp
    @staffs << @staff
    count += 1
    end

    puts "------スタッフ一覧------"
    @staffs.each do |s|
        puts "#{s[:name]}"
    end
    puts "------スタッフ一覧------"
end



def holiday
    puts "どなたの希望休を登録しますか??該当の番号を入力して下さい"
    count = 0
    @staffs.each do |s|
        puts "#{count}:#{s[:name]}"
        count += 1
    end
    staff_num = gets.to_i
    puts "#{@staffs[staff_num][:name]}さんの希望休を登録します"
    puts "希望休は何日ありますか"
    holiday_count = gets.to_i

    count = 1

    @staff[:holiday] = []
    holiday_count.times do
        puts "#{count}日目の希望休を入力してください"
        holiday_num = gets.to_i
        @staff[:holiday] << holiday_num
        count += 1
    end

    puts "#{@staffs[staff_num][:name]}さんのが希望休はこちらです"
    @staff[:holiday].each do |s|
        puts "#{s}日"
    end
    @staffs[staff_num][:holiday] = @staff[:holiday]

end


def holiday_index
    @staffs.each do |s|
        puts "#{s[:name]}さんの希望休：#{s[:holiday].sort}"
    end
end


def workday
    puts "どなたの出勤日を登録しますか??該当の番号を入力して下さい"
    count = 0
    @staffs.each do |s|
        puts "#{count}:#{s[:name]}"
        count += 1
    end
    staff_num = gets.to_i
    puts "#{@staffs[staff_num][:name]}さんの出勤日を登録します"
    puts "出勤日は何日ありますか"
    workday_count = gets.to_i


    @staff[:workday] = []
    puts "必ず出勤しなければならない日はありますか？該当の番号を入力してください"
    puts "1:Yes"
    puts "2:No"
    input = gets.to_i
        if input == 1
            count = 1
            while true do
                puts "必ず出勤しなければならない日を入力してください(#{count}日目)"
                workday_num = gets.to_i
                @staff[:workday] << workday_num
                count += 1
                puts "他に必ず出勤しなければならない日はありますか?"
                puts "1:Yes"
                puts "2:No"
                input = gets.to_i
                if input == 2
                    break
                end
            end
        end
    working = @month - @staff[:workday] - @staffs[staff_num][:holiday]
    working = working.sample(workday_count - @staff[:workday].length) + @staff[:workday]
    p @staff[:workday] = working.sort
    end




    def workday_index
        @staffs.each do |s|
            puts "#{s[:name]}さんの出勤日：#{s[:workday].sort}"
        end
    end







while true do
    puts "何を行いますか？？該当の番号を入力して下さい"
    puts "1：スタッフの登録"
    puts "2：希望休の登録"
    puts "3：希望休の確認"
    puts "4：出勤日の登録"
    puts "5：出勤日の確認"
    puts "6：終了"

    input_num = gets.to_i

    if input_num == 1
        name_registor
    elsif input_num == 2
        holiday
    elsif input_num == 3
        holiday_index
    elsif input_num == 4
        workday
    elsif input_num == 5
        workday_index
    elsif input_num == 6
        break
    end
end

