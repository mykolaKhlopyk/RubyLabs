require 'matrix'

def createVector(n)
  v = Vector.zero(n)
  (0..n - 1).each do |i|
    v[i]=rand 10
  end
  return v
end

def createMatrix(n)
  matrix = Array.new(n) { Array.new(n) }

  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      if i == j
        matrix[i][j] = 1
      else
        matrix[i][j] = rand 10
      end
    end
  end
  return matrix
end

def task(m, v)
  res = Vector.zero(v.size())
  (0..v.size() - 1).each do |i|
    (0..v.size() - 1).each do |j|
      res[i]+=m[i][j]*v[j]
    end
  end
  return res
end

m = createMatrix(8)
v = createVector(8)
res = task(m, v)

print res