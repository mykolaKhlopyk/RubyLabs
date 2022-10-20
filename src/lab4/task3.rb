require 'matrix'

def createVector(n)
  v = Vector.zero(n)
  (0..n - 1).each do |i|
    v[i]=(rand 10).to_f
  end
  return v
end

def createMatrix(n)
  matrix = Array.new(n) { Array.new(n) }

  (0..n - 1).each do |i|
    (0..n - 1).each do |j|

        matrix[i][j] = (rand 10).to_f
    end
  end
  return matrix
end

def task(m, v)
  n=m.size()
  res = Array.new(n){Vector.zero(n+1)}
  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      res[i][j] = m[i][j]
    end
  end
  (0..n - 1).each do |j|
    res[j][n]=v[j].to_f
  end
  visited = Array.new(n, false)
  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      if res[j][i]!=0 && !visited[j]
        divider=res[j][i]

        res[j]=res[j]/divider
        (0..n - 1).each do |k|
          if k!=j
            res[k]-=(res[j]*res[k][i])
          end
        end
        visited[j]=true
        break
      end
    end

  end

  return res
end

def printMatrix(m)
  (0..m.size() - 1).each do |i|
    print m[i],"\n"
  end
end

m = createMatrix(8)
v = createVector(8)
printMatrix(m)
print v,"\n"

res = task(m, v)
print "\n"
printMatrix(res)
#print res,"\n"
n=8
printMatrix(m)
print v,"\n"
(0..n - 1).each do |i|
  (0..n - 1).each do |j|
    v[i]-=(res[j][n]*m[i][j])
  end
end
print v



