# 벡터 다루기 # 문자 > 숫자 > 논리값
vec_integer = 8:17
print(vec_integer)

c('a', 'b', 'c', 1, 2, 3)
c(1, 2, 3, TRUE, FALSE)
c('a', 'b', 'c', TRUE, FALSE)

v1 = 8:17
print(v1)

c(v1, 18:22)

v1[2]
v1[5]
v1[2:4]
v1[c(2, 4, 6)]

v1
v1[-1]
v1[-c(2, 4, 6, 8)]

v1 < 12
v1[v1 < 12]
v1[v1 < 12 | v1 > 15]

# 리스트 다루기
l = list(1:3, 'a', c(TRUE, FALSE, TRUE), c(2.5, 4.2))
str(l)

l2 = list(1:3, list(letters[1:5], c(TRUE, FALSE, TRUE)))
str(l2)

l3 = list(1:3, 'a', c(TRUE, FALSE, TRUE))
l4 = append(l3, list(c(2.5, 4.2)))
str(l4)

l4$item5 = 'new list item'
str(l4)

l4[1]
l4[[1]]

l4['item5']
l4$item5

l4[[1]]
l4[[1]][3]

#데이터 프레임 다루기
df = data.frame (col1 = 1:3,
                 col2 = c ("this", "is", "text"),
                 col3 = c (TRUE, FALSE, TRUE),
                 col4 = c (2.5, 4.2, pi))

str(df)
df

v1 = 1:3
v2 = c ("this", "is", "text")
v3 = c (TRUE, FALSE, TRUE)

data.frame(col1 = v1, col2 = v2, col3 = v3)

l = list (item1 = 1:3,
          item2 = c ("this", "is", "text"),
          item3 = c (2.5, 4.2, 5.1))
l
data.frame(l)

v4 = c ("A", "B", "C")
cbind(df, col4 = v4)

v5 = c (4, "R", F, 1.1)
rbind(df, v5)

df

df[2:3, ]
df[ , c('col2', 'col4')]
df[, 2]
df[, 2, drop = FALSE]

#결측치 처리하기
x = c(1:4, NA, 6:7, NA)
x
is.na(x)

df = data.frame (col1 = c (1:3, NA),
                 col2 = c ("this", NA,"is", "text"),
                 col3 = c (TRUE, FALSE, TRUE, TRUE),
                 col4 = c (2.5, 4.2, 3.2, NA),
                 stringsAsFactors = FALSE)

df
is.na(df)

y = c(1, 3, NA, 4)
mean(y)
mean(y, na.rm = TRUE)

df = data.frame (col1 = c (1:4),
                 col2 = c ("this", NA,"is", "text"),
                 col3 = c (TRUE, FALSE, TRUE, TRUE),
                 col4 = c (2.5, 4.2, 3.2, 5.0)
)

df
na.omit(df)

x = c(1:4, NA, 6:7, NA)
x
x[is.na(x)] = mean(x, na.rm = TRUE)
x
