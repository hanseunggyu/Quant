# 함수

PV = function(FV, r, n) {
  PV = FV /(1+r)^n
  return(round(PV, 2))
}

PV(FV = 1000, r = 0.08, n=5)
PV(FV = 1000, r = 0.08, n=4)
PV(1000, 0.08, 4)

# 루프 구문
# if

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

# for loop

for (i in 2016:2020) {
  output = paste("The year is", i)
  print(output)
}

# apply 계열 함수
head(mtcars)
apply(mtcars, 2, mean)
apply(mtcars, 2, max)

data = list(item1 = 1:4,
            item2 = rnorm(10),
            item3 = rnorm(20, 1),
            item4 = rnorm(100, 5))

data
lapply(data, mean)
lapply(data, sd)

beaver_data = list(beaver1 = beaver1, beaver2 = beaver2)
lapply(beaver_data, head)

lapply(beaver_data, function(x) {
  round(apply(x, 2, mean), 2)
})

sapply(beaver_data, function(x) {
  round(apply(x, 2, mean), 2)
})

rowSums(mtcars)
colSums(mtcars)
rowMeans(mtcars)
colMeans(mtcars)

# 파이프 오퍼레이터

x = c(0.3078, 0.2577, 0.5523, 0.0564, 0.4685,
      0.4838, 0.8124, 0.3703, 0.5466, 0.1703)
x1 = log(x)
x2 = diff(x1)
x3 = exp(x2)
round(x3, 2)
round(exp(diff(log(x))), 2)

library(magrittr)
x %>% log() %>% diff() %>% exp() %>% round(., 2)
