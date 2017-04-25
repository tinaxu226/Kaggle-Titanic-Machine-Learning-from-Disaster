### Code for Kaggle Competition - Titanic: Machine Learning from Disaster ###

#install and load all packages
install.packages("randomForest")
install.packages("caret")
install.packages("lattice")
install.packages("ggplot2")
library(lattice)
library(ggplot2)
library(randomForest)
library(caret)

#Read the training and test data
trainSet <- read.csv("train.csv", stringsAsFactors = FALSE)
testSet <- read.csv("test.csv", stringsAsFactors = FALSE)

#Combine two data sets for easier feature Engineering
testSet$Survived <- NA
combiSet <- rbind(trainSet,testSet)

#set seed for reproducibility
set.seed(123)

##data processing

#check out the data
summary(combiSet)

#convert data to factors
combiSet$Survived <- as.factor(combiSet$Survived)
combiSet$Embarked <- as.factor(combiSet$Embarked)
combiSet$Sex <- as.factor(combiSet$Sex)
summary(combiSet) #check missing values

#clean data 
combiSet$Embarked[combiSet$Embarked == ''] <- 'S' #change the blank columns in variable "Embarked" to the most common marking
combiSet$Age[is.na(combiSet$Age)] <- mean(combiSet$Age, na.rm = TRUE) #change the NAs to the average value(mean)
which(is.na(combiSet$Fare))#check where is the NA in fares and we found that it is in row 153 and it belongs to a Pclass =3 passenger
combiSet$Fare[1044] <- mean(combiSet$Fare[combiSet$Pclass ==3], na.rm = TRUE) #fill the NA with the average price of Pclass = 3
summary(combiSet) #all cleaned data

#check importance of variables
train <- combiSet[1:891,]
test <- combiSet[892:1309,]
png("plot5.png", width=480, height=480)
plot(trainSet$Survived,trainSet$Age, xlab="Survived",ylab="Age")

#Make Model without irrelevent variables: Name, PassengerId, Ticket and Cabin
fit <- randomForest(Survived ~ Pclass + Age + Sex + SibSp + Parch + Fare + Embarked, data=train,ntree=2000, importance=TRUE)
print(fit)
varImpPlot(fit)
predictions <- predict(fit, test)


#Preps file for kaggle submission
MySubmission <- data.frame("PassengerID"=test$PassengerId, "Survived"=predictions)

#Creates csv for kaggle
write.csv(MySubmission, file = "prediction.csv", row.names=FALSE)


