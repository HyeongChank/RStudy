smoke <- read.csv("./data/smoke.csv", header = T)
smoke

smoke$education2[smoke$education==1] <- "1. 대졸"
smoke$education2[smoke$education==2] <- "2. 고졸"
smoke$education2[smoke$education==3] <- "3. 중졸"

smoke$smoking2[smoke$smoking==1] <-"1.과대흡연"
smoke$smoking2[smoke$smoking==2] <-"2.보통흡연"
smoke$smoking2[smoke$smoking==3] <-"3.미흡연"

table(smoke$education2, smoke$smoking2)

library(gmodels)
CrossTable(smoke$education2, smoke$smoking2, chisq = T)

data <- read.csv("./data/cleanData.csv", fileEncoding = "euc-kr")
str(data)

x <- data$position
y <- data$age3

plot(x,y, abline(lm(y~x)))

CrossTable(x,y , chisq = T)

## d.f. = 자유도

result <- read.csv("./data/response.csv")
str(result)
result$job2[result$job==1] <- "1.학생"
result$job2[result$job==2] <- "1.직장인"
result$job2[result$job==3] <- "1.주부"

result$response2[result$response==1] <- "1.무응답"
result$response2[result$response==2] <- "1.낮음"
result$response2[result$response==3] <- "1.높음"

table(result$job2, result$response2)

CrossTable(result$job2, result$response2)
chisq.test(result$job2, result$response2)
# p-value 값 6.901e-12 == -12승을 말하는 것

