@staffs = []
@shift = []


def name_registor
    puts "何名登録しますか??"
    staff_count = gets.to_i

    count = 1
    staff_count.times do
    @staff = {}
    puts "#{count}人目の名前を入力してください"
    @staff[:name] = gets.chomp
    puts "#{@staff[:name]}さんの連勤数の最大値を入力してください"
    @staff[:max_work] = gets.to_i
    @staff[:return_max_work] = @staff[:max_work]
    puts "#{@staff[:name]}さんの休日の日数を入力してください"
    @staff[:holiday_num] = gets.to_i
    puts "#{@staff[:name]}さんの出勤数を入力してください"
    @staff[:workday_num] = gets.to_i
    @staffs << @staff
    count += 1
    end

    puts "------スタッフ一覧------"
    @staffs.each do |s|
        puts "#{s[:name]}"
    end
    puts "------スタッフ一覧------"
end

# -----------------------------------------------------------------


def setting
    puts "最低出社人数を登録してください"
    @min_human = gets.to_i

end


# ---------------------------------------------------------------

def holiday
    puts "どなたの希望休を登録しますか??該当の番号を入力して下さい"
    count = 1
    @staffs.each do |s|
        puts "#{count}:#{s[:name]}"
        count += 1
    end
    staff_num = gets.to_i
    puts "#{@staffs[staff_num - 1][:name]}さんの希望休を登録します"
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

    puts "#{@staffs[staff_num - 1][:name]}さんのが希望休はこちらです"
    @staff[:holiday].each do |s|
        puts "#{s}日"
    end
    @staffs[staff_num - 1][:holiday] = @staff[:holiday]

end

# -------------------------------------------------------

def shift_registor
    3.times do
    www = []
    @staffs.each do |s|
        if s[:max_work] != 0 && s[:workday_num] != 0
            www << s
        else
           s[:max_work] = s[:return_max_work]
        end
    end
    shift_staff = www.sample(2)
    @shift << shift_staff
    shift_staff.each do |s|
        s[:max_work] -= 1
        s[:workday_num] -= 1
    end


end
end


# ------------------------------------------------------------


while true do
    p @shift
    @shift.each do |s|
        p s
    end
    puts "何を行いますか？？該当の番号を入力して下さい"
    puts "1：スタッフの登録"
    puts "2：設定の登録"
    puts "3：希望休の登録"
    puts "4：シフトの登録"
    puts "5：終了"

    input_num = gets.to_i

    if input_num == 1
        name_registor
    elsif input_num == 2
        setting
    elsif input_num == 3
        holiday
    elsif input_num == 4
        shift_registor
    elsif input_num == 5
        break
    end
end








