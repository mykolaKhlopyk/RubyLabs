
def f(x, i)
  return (Math.cos(2 * i.to_f - 1) * x.to_f) / ((2 * i.to_f - 1) ** 2)
end

def infiniteSeries(x)
  res = 0.to_f
  step = (Math.cos(-1) * x.to_f);
  e = 0.0001
  i = 0
  res = 0
  while ((((2*i)-1)**2)<1/e)
    res+=f(x, i)
    i+=1
  end
  return res
end

def SeriesByN(x, n)
  res = 0.to_f
  for i in 0..n
    res += f(x, i)
  end
  return res
end

x=0.5
print infiniteSeries(x),"\n"
print SeriesByN(x, 20),"\n"
print SeriesByN(x, 58),"\n"


