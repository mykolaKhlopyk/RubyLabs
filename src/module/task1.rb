def F(x, a, b, c)
  if x < 3 && b != 0
    return a * x*x - b * x + c
  end
  if x > 3 && b == 0
    return (x - a) / (x - c).to_f
  end
  return x / c.to_f
end


print "enter a\n"
a = gets.chomp.to_f
print "enter b\n"
b = gets.chomp.to_f
print "enter c\n"
c = gets.chomp.to_f
print "enter x in a begin\n"
xb = gets.chomp.to_f
print "enter x in an end\n"
xe = gets.chomp.to_f
print "enter step\n"
dx = gets.chomp.to_f

if !(a.truncate || b.truncate) && (a.truncate % 2)
  a = a.truncate
  b = b.truncate
  c = c.truncate
  xb = xb.truncate
  xe = xe.truncate
  dx = dx.truncate
end

for i in (xb..xe).step(dx)
  print "step ",i, " equals ", F(i, a, b, c), "\n"
end

