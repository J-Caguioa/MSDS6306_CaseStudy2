
##KNN example on credit data -- 
#http://nbviewer.jupyter.org/github/arqmain/Machine_Learning/blob/master/R_MLearning/MLearning_Classification_Comparison_R_MLR_KFold/Project3_RProject_MLR_CVKFold.ipynb

#rename columns to english

# read and attach the dataset
filename <- "http://www.arqmain.net/MLearning/Datasets/Loan2016last.csv"

# load the CSV file from the local directory
df <- read.csv(filename, header=TRUE)
attach(df)

library(mlr)

summarizeColumns(df)

# This is a map for visualizing the missing rows (Package Amelia).
#library(Amelia)
#missmap(df)

#stratified sampling to get the train and test dataset
#install.packages("caret")
library(caret)
library(FSelector)
set.seed(7) # Set Seed so that same sample can be reproduced in future also
# considering response variable as strata
data_part <- createDataPartition(y = df$Tclient,  p = 0.70, list = F)
test <- df[-data_part,] # 30% data goes here
train <- df[data_part,] # 70% here

length(train$Tclient)
length(test$Tclient)

unloadNamespace("caret")

#summarize train and test dataset by columns 
head(train)
head(test)

length(train$Tclient)
length(test$Tclient)

summarizeColumns(train)
summarizeColumns(test)

#description of train and test data
trainTask <- makeClassifTask(data = train,target = "Tclient")
testTask <- makeClassifTask(data = test, target = "Tclient")

#It is considering positive class as Bad, whereas it should be Good. Let’s modify it:
trainTask <- makeClassifTask(data = train,target = "Tclient", positive = "Good")

trainTask

str(getTaskData(trainTask))

#MLR package has an in built function which returns the important variables from data. 
#Let’s see which variables are important. Later, we can use or not this knowledge to subset out input predictors for model improvement.

#Feature importance
im_feat <- generateFilterValuesData(trainTask, method = c("information.gain","chi.squared"))
plotFilterValues(im_feat,n.show = 10)

#K-Nearest Neighbors
lrn3 = makeLearner("classif.knn", predict.type = "response")

#cross validation (cv) metrics
learner = lrn3
task = trainTask
iters = 10
stratify = TRUE
measures = list(acc, kappa, f1, tpr, tnr, fpr) 
cv.lrn3 <- crossval(learner, task, iters, stratify, measures, show.info = F)

#cross validation metrics summary
(summa3<-summarizeColumns(cv.lrn3$measures.test[,-1,-8:9]))

#to create table plot metrics all models
mod3summa<-subset(summa3, select = c( name, mean, disp))
fitter<-c(3,3,3,3,3,3)
mod3summa$fitter<-fitter

#Fit the model (train model)
mod3 = mlr::train(lrn3, trainTask)  #need to specify mlr to avoid clash with train function of caret

getLearnerModel(mod3)

#Make predictions (predict on test data)
pred3 = predict(mod3, testTask)


