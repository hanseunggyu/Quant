#숫자 형태

dbl_var = c(1, 2.5, 4.5)

print(dbl_var)

int_var = c(1L, 6L, 5L)

print(int_var)

as.integer(dbl_var)

# 1:10
c(1,5,10) 
c(1:10)

seq(from = 1, to = 21, by = 2)
seq(from = 0, to = 21, length.out = 15)

rep(1:4, times=3)
rep(1:4, each=2)

#올림, 내림, 반올림
x = c(1, 1.35, 1.7, 2.053, 2.4, 2.758, 3.1, 3.45,
      3.8, 4.15, 4.5, 4.855, 5.2, 5.55, 5.9)
round(x)
round(x, digits = 1)

ceiling(x)
floor(x)

#문자열 형태
a = 'learning to create'
b = 'character strings'

paste(a, b)

print(pi)

paste('pi is', pi)

paste('I', 'love', 'R')
paste('I', 'love', 'R', sep = '/')
paste0('I', 'love', 'R')

# stringr 패키지
library(stringr)
str_c('Learning', 'to', 'use', 'the', 'stringr', 'package', sep = ' ')

text = c('Learning', 'to', NA, 'use', 'the', NA, 'stringr', 'package')
str_length(text)

x = 'Learning to use the stringr package'
str_sub(x, start = 1, end = 15)
str_sub(x, start = -7, end = -1)

text = c('Text ', ' with', ' whitespace ', ' on', 'both ', 'sides ')
print(text)
str_trim(text, side = 'left')
str_trim(text, side = 'right')
str_trim(text, side = 'both')

a = 005930
print(a)

str_pad('bear', width = 10, side = 'left')
str_pad('bear', width = 10, side = 'left', pad = '!')
str_pad(5930, width = 6, side = 'left', pad = '0')


# 날짜 형태
Sys.timezone()
Sys.Date()
Sys.time()

x = c('2021-07-01', '2021-08-01', '2021-09-01')
x_date = as.Date(x)
str(x_date)

y = c('07/01/2015', '08/01/2015', '09/01/2015')
as.Date(y, format = '%m/%d/%Y')

# lubridate
install.packages('lubridate')
library(lubridate)
x = c('2021-07-01', '2021-08-01', '2021-09-01')
y = c('07/01/2015', '08/01/2015', '09/01/2015')

ymd(x)
mdy(y)

year(x)
month(x)
week(x)

z = '2021-09-15'

yday(z)
mday(z)
wday(z)

x = ymd('2021-07-01', '2021-08-01', '2021-09-01') 
x + years(1) - days(c(2, 9, 21))

#날짜 순서 생성하기
seq(ymd('2015-01-01'), ymd('2021-01-01'), by ='years')
seq(ymd('2021-09-01'), ymd('2021-09-30'), by ='2 day')
