getwd()
data <- read.csv("./data/공정_시설_사무_부문의_자동화_수준.csv", header = TRUE
                 ,fileEncoding = "euc-kr")

head(data)
view(data)
data
# 단계 2: 변수 리코딩
x <- data$자동화수준별.3.
y <- data$pass2

# 단계 3: 데이터프레임 생성
result <- data.frame(Level = x, Pass = y)
dim(result)

result


