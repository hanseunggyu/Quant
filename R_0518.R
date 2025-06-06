#setwd("주소")
getwd()

#csv 파일 불러오기
kospi = read.csv('kospi.csv')
view = kospi

install.packages('readr')  
library(readr)

kospi2 = read_csv('kospi.csv')
head(kospi2)

# using write.csv
write.csv(kospi, 'kospi2.csv', row.names = FALSE)

# using write_csv
write_csv(kospi2, 'kospi2.csv')

install.packages('readxl') 
install.packages('writexl') 

library(readxl)
kospi_excel = read_excel('kospi.xlsx', sheet = 'kospi')
head(kospi_excel)

library(writexl)
write_xlsx(kospi_excel, 'kospi_excel.xlsx')

