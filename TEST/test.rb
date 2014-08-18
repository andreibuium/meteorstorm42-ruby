
  
x = (0 .. 999).to_a
puts "X = " + x.to_s

# x.delete_if { |e| e % 3 != 0 && e % 5 != 0 }
x.delete_if { |e| e % 3 != 0 }
x.delete_if { |e| e % 5 != 0 }
puts "X = " + x.to_s

sum = 0
x.each{ |e| sum += e }

puts "SUM = " + sum.to_s


# 166833
# 99500
