
trainData = read.csv("training_data1.csv")
summary(trainData)
head(trainData)

library(mdatools)
trainDataP = subset(trainData)
head(trainDataP)
xc = trainDataP[,-c(8,10)]
head(xc)
yc = trainDataP[,8]

ModelPLS = pls(xc, yc, scale = TRUE, cv=3)
summary(ModelPLS)
plot(ModelPLS)
plotXScores(ModelPLS,show.label = F)
plotXYLoadings(ModelPLS,show.label = TRUE, cex=1.5)
plotVIPScores(ModelPLS,ncomp = 2, type = "h",show.label = TRUE)
summary(ModelPLS$coeffs)
plot(ModelPLS$coeffs,show.label = TRUE)
