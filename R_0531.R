# 함수

PV = function(FV, r, n) {
  PV = FV /(1+r)^n
  return(round(PV, 2))
}

PV(FV = 1000, r = 0.08, n=5)
PV(FV = 1000, r = 0.08, n=4)
PV(1000, 0.08, 4)

# 루프 구문
# if, for loop

x = c(8, 3, -2, 5)
if (any(x > 0)) {
  print('x contains negative number')
}

y = c(8, 3, 2, 5)
if(any(y < 0)) {
  print('y contains negative number')
} else{
  print('y contains all positive numbers')
}

ifelse(any(y<0), 'A', 'B') # True면 A, False면 B

x = 7

if (x >= 10) {
  print ("x exceeds acceptable tolerance levels")
} else if(x >= 0 & x < 10) {
  print ("x is within acceptable tolerance levels")
} else {
  print ("x is negative")
}

# for loop 구문

for (i in 2016:2020) {
  output = paste("The year is", i)
  print(output)
}

# apply 계열 함수
head(mtcars)





