# 盤面
@a = [' ',' ',' '],[' ',' ',' '],[' ',' ',' ']
@i = 0
def output
  puts '   1 | 2 | 3 |'
  puts '1| ' + @a[0][0].to_s + ' | ' + @a[0][1].to_s + ' | ' + @a[0][2].to_s + ' |'
  puts '2| ' + @a[1][0].to_s + ' | ' + @a[1][1].to_s + ' | ' + @a[1][2].to_s + ' |'
  puts '3| ' + @a[2][0].to_s + ' | ' + @a[2][1].to_s + ' | ' + @a[2][2].to_s + ' |'
end