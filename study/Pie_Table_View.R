getwd()

dataset <- read.csv("./data/dataset.csv", header = T)
head(dataset)

dataset2 <- subset(dataset, price >=2 & price <=8)
str(dataset2)
dataset2
pos <- dataset2$position
cpos <- 6 - pos

view(dataset2)

dataset2$position <- cpos
dataset2$position[dataset2$position ==1] <- '1급'
dataset2$position[dataset2$position ==2] <- '2급'
dataset2$position[dataset2$position ==3] <- '3급'
dataset2$position[dataset2$position ==4] <- '4급'
dataset2$position[dataset2$position ==5] <- '5급'

range(dataset2$resident, na.rm=T)
# ?range
# help 읽는 법
# range {base} == base는 패키지명
dataset2 <- subset(dataset2, !is.na(dataset2$resident))


View(dataset2)
dataset2

dataset2$gender2[dataset2$gender ==1] <- '남자'
dataset2$gender2[dataset2$gender ==2] <- '여자'

pie(table(dataset2$gender2))
pie(table(dataset2$resident))
table(dataset2$gender2)
data.frame(dataset2)








