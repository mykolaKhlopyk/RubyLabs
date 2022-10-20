def prm (a, b, f, n)
  res = 0.0
  h=(b-a)/n.to_f
  for i in (a..b).step(h)
    res+=method(f).call((i-(h/2)))
  end
  return res*h
end

def trp (a, b, f, n)
  res = (method(f).call((a))+method(f).call((b)))/2
  h=(b-a)/n.to_f
  for i in ((a+h)..(b-h)).step(h)
    res+=method(f).call((i))
  end
  return res*h
end

def f1(x)
  return 2.0/((1-4.0*x).to_f)
end
def f2(x)
  return Math.asin(Math.sqrt(x.to_f))/(Math.sqrt(x.to_f*(1-x.to_f)))
end
n = 500000

print prm(2.2, 3.2, :f1, n),"\n"
print trp(2.2, 3.2, :f1, n), "\n"
print prm(0.2, 0.3, :f2, n), "\n"
print trp(0.2, 0.3, :f2, n),"\n"