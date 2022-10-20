p "enter x"
x = gets.chomp.to_f
p "enter t"
t = gets.chomp.to_f
p "enter z"
z = gets.chomp.to_f

y = Math.exp(Math.tan(x)**2)+Math.sqrt((t-z).abs)/((Math.cos(Math::PI**2)**3)+Math.exp(Math::PI)*(z*z))+2.3*(10**1.6)

print "y = "+y.to_s,"\n"
