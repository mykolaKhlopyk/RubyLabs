res1=1;
x=2;
for i in 1..10 do
  res1+=((-1)**i) * (i+1.0)/(i+2.0)*(x**i);
end

res2 = 1.0
for i in 1..8 do
  res2+=1.0/(3**i);
end
print res1, "\n"
print res2
