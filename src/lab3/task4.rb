def factorial(n)
  res = 1
  i=2
  while i < n
    res*=i
    i+=1
  end
  return res
end

#1
e = 0.00001
stepValue=1.0
result=0.0
n=2.0
while(stepValue.abs>e)
  stepValue=((factorial(n-1)*1.0)/(factorial(n+1)))**(n*(n+1))
  result+=stepValue
  #print stepValue, "\n"
  n+=1
end

print "result 1 = ", result, "\n"

x=2.0
stepValue=1.0
result=1.0/x
n=1.0
while(stepValue.abs>e)
  stepValue=((2.0*((-1)**n) * ((2**(2*n)) - 1.0))/(factorial(2*n)))*n**(6.0/7)*x**((2*n)-1)
  result+=stepValue
  n+=1
end
print "result 2 = ", (2.0/(Math.exp(x)-Math.exp(-x))), "\n"


#3
stepValue=1.0
result=0.0
n=1.0
while(stepValue.abs>e)
  stepValue=((factorial(3*n-2)*1.0)*factorial(2*n-1))/(factorial(4*n)*5**(2*n)*factorial(2*n))
  result+=stepValue
  #print stepValue, "\n"
  n+=1
end
print "result 3 = ", result, "\n"
