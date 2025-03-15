#숫자 형태

dbl_var = c(1, 2.5, 4.5)

print(dbl_var)

int_var = c(1L, 6L, 5L)

print(int_var)

as.integer(dbl_var)
1:10
c(1,5,10) 
c(1:10)

seq(from = 1, to = 21, by = 2)
seq(from = 0, to = 21, length.out = 15)

rep(1:4, times=3)
rep(1:4, each=2)

x = c(1, 1.35, 1.7, 2.053, 2.4, 2.758, 3.1, 3.45,
      3.8, 4.15, 4.5, 4.855, 5.2, 5.55, 5.9)
round(x)
round(x, digits = 1)

ceiling(x)
floor(x)
