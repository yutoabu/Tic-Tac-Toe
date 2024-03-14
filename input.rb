# 1〜3の整数判定
def get_integer_input
  print "1〜3の整数を入力してください: "
  input = gets.chomp

  # 入力が整数であるかを確認する
  until input.match?(/^\d+$/)
    print "正しい形式で1〜3の整数を入力してください: "
    input = gets.chomp
  end

  # 整数に変換して返す
  return input.to_i
end


def input
  
  # 先手・後手の判定
  if @i % 2 == 0
    puts 'oの番'
  else
    puts 'xの番'
  end

  # 場所の指定
  puts '何行目ですか？'
  sel_num1 = get_integer_input
  while sel_num1 > 3 or sel_num1 < 1
    sel_num1 = get_integer_input
  end
  puts '何列目ですか？'
  sel_num2 = get_integer_input
  while sel_num2 > 3 or sel_num2 < 1
    sel_num2 = get_integer_input
  end

  # 盤面に置く
  @i += 1
  if @a[sel_num1-1][sel_num2-1] == ' ' and @i % 2 == 1
    @a[sel_num1-1][sel_num2-1] = 'o'
  elsif @a[sel_num1-1][sel_num2-1] == ' ' and @i % 2 == 0
    @a[sel_num1-1][sel_num2-1] = 'x'
  elsif @a[sel_num1-1][sel_num2-1] != ' '
    puts 'このマスには既に置かれています。違うマスを選択してください。'
    @i -= 1
  end
  puts "#{sel_num1}行目の#{sel_num2}列目に置きました。"
end
