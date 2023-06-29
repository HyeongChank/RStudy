dataset <-read.csv("./data/dataset.csv", header =T)
dataset

#표 형태로 나옴
View(dataset)
head(dataset)
tail(dataset)
#제목
names(dataset)

str(dataset)
#
# data 자료 형태 확인(num 은 double)

# 1. 데이터 분석의 기초
# - 프로젝트 구조를 잘 정의(폴더)-일관된 형태로
# 
# 2, 데이터가 가장 중요
# - 데이터 설명
# - 데이터 자료 구조
# - 데이터 자료 형태
# - 데이터는 숫자로 구성

# 3. 데이터 분석은 컬럼이 제일 중요
# - 결측치 및 아웃라이어(극단치) 일단 삭제

# 그래프는 반드시 확인하고 표현(google seaborn)
# x,y, data가 반드시 필요
dataset$age
x <-dataset$age

plot(dataset$price)
mean(dataset$price)

dataset[1]
dataset[c(2,5)]

summary(dataset)

sum(dataset$price, na.rm =T)
price2 <- na.omit(dataset$price)
price2

#결측치, 