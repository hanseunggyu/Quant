number = data.frame(1,2,3,"4",5, stringsAsFactors = FALSE)
str(number)

for (i in number) {
    print(i^2)
}

#오류에 대한 예외처리
for (i in number) {
    tryCatch({
        print(i^2)
    }, error = function(e) {
        print(paste('Error:', i))
    })
}
