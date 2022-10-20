$index=0

def setValuesInC(c, a,restByDivide)
  for x in a do
    if(x%2==restByDivide)
      c[$index]=x
      $index=$index+1
    end
  end
end

A = Array.new(12){rand(-10..10)}
B = Array.new(12){rand(-10..10)}
C = Array.new(24)

setValuesInC(C, B, 0)
setValuesInC(C, B, 1)
setValuesInC(C, A, 1)
setValuesInC(C, A, 0)
print A, "\n", B, "\n", C
