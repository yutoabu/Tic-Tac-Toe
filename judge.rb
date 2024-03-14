# 勝利判定
def judgement
  j = 0
  while j < 2
    if j == 0
      judge = 'o'
    else
      judge = 'x'
    end
    if @a[0][0] == judge and @a[1][1] == judge and @a[2][2] == judge
      puts "#{judge}の勝ち"
      exit
    elsif @a[0][2] == judge and @a[1][1] == judge and @a[2][0] == judge
      puts "#{judge}の勝ち"
      exit
    end
    n = 0
    m = 0
    while n < 3 and m < 3
      if @a[n][0] == judge and @a[n][1] == judge and @a[n][2] == judge
        puts "#{judge}の勝ち"
        exit
      else
        n += 1
      end
      if @a[0][m] == judge and @a[1][m] == judge and @a[2][m] == judge
        puts "#{judge}の勝ち"
        exit
      else
        m += 1
      end
    end
    j += 1
  end
  # 引き分けの判定
  if @i == 9
    puts '引き分け'
    exit
  end
end
