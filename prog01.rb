# -*- coding: utf-8 -*-

def f(x)
  return eval($func)
end

puts "Input f(x)"
$func = gets.chop

# Initialize frame buffer
# frame buffer x=0..79, y=0..24
frame = []
24.times do
  line = []
  line << '|'
  79.times do
    line << ' '
  end
  frame << line
end
line = ['+']
79.times do
  line << '-'
end
frame << line

# X label
frame[23][78] = 'X'

# Y label
frame[0][1] = 'Y'

# draw func
###
frame[0][4]='y='
frame[0][5]=$func
### 分担3
###

# draw graph
for x in 0..79.0 do
  v=x*24.0
  v=v/355.5
  y = f(v)
  if x != 0 || y != 0  then
    if y < 24 then
      frame[25-y][x] = '*'
    end  
  end
end
    # printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end
