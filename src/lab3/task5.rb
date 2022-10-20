$N = 10.0
$c = 4.0

def task1(x)
  return (x ** ((($N - $c) ** 2 + 4 * $N * $c) / (($N ** 2 - $c ** 2) * $N))) + ((x / $N) + 12) / (6 - ($c * x))
end

def task2(x)
  pi = 3.141592
  return (1 - Math.cos(4 * x)) / ((Math.cos(2 * x) ** (-2)) - 1) + (1 + Math.cos(4 * x)) / ((Math.sin(2 * x) ** (-2)) - 1) + Math.tan(2 * pi / 9 - x) ** ($c / $N)
end

def task3(x)
  if(x > 2 && x<$N) then
    return task1(x)
  end
  if(x > $N && x<2*$N) then
    return task2(x)
  end
  return 0
end

print "task1: "
#1
iterator = 1;
i = 1.0
step = ($N - 1) / ($N + $c)
while (i < ($N + $c))
  print iterator, ":",task1(i), " "
  iterator+=1
  i += step
end
print "\ntask2: "

#2
iterator=1
pi = 3.141592
i = pi/$N
step = (pi- (pi/$N))/(((3.0/2)*$N)+$c)
#print i,"      ", step,"       "
while (i < (pi))
  print iterator,": ",task2(i), " "
  iterator+=1
  i += step
end

print "\ntask3: "
#3
iterator=1
i = 2.0
step = ($c-2)/$N
while (i < ($c))
  print  iterator,": ",task3(i), " "
  iterator+=1
  i += step
end