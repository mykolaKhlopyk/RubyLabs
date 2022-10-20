A = true
B = false
C = true
X = 50
Y = 10
Z = -5

resA = !(A || B) && (A && !B)
resB = (!(Z != Y) || (6 >= Y)) && A || B && C && X>=15
resC = ((8 - X*2)<=Z)&&(X**2 >= Y**2) || (Z>=15)
resD = X > 0 && Y<0 || Z>=(X*Y - (-Y/X))+(-Z)/2
resE = !(A || B && !(C || (!A || B)))
resF = ((X**2 + Y**2) >= 1)||X>=0 && Y >=0
resG = (A&&(C&&B <=> B||A)|| C)&&B

x2=4.5
P = true

res = !((Math.exp(x2*x2))-Math.sin(x2)<3.14) && (P || !P)

print resA, "\n"
print resB, "\n"
print resC, "\n"
print resD, "\n"
print resE, "\n"
print resF, "\n"
print resG, "\n"

print res, "\n"


