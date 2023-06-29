install.packages("tidyverse")
install.packages("ggplot2")
library(tidyverse)
library(ggplot2)


library(readxl)
df <- read_excel("./Data/시군구_성_월별_출생.xlsx")
view(df)

#원래 데이터 df 는 두고 df2로 별도로 분석
#쿼리 사용과 유사하게 변하고 있음

df2 <- df %>%
  filter(!is.na(시점)) %>%
  select(시점, 전국) %>%
  separate(시점, into = c("년도","월"))

df2 <- df2 %>%
  group_by(월) %>%
  summarise(평균출생수 = mean(전국))

# .은 참조연산자라고 함, %>% 는 파이프
df2 %>%
  qplot(x=월, y=평균출생수, data=.)

