# 外部読み込み
require_relative 'output'
require_relative 'input'
require_relative 'judge'

# ゲームループ
output
loop do
  input
  output
  judgement
end
