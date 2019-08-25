#Load row data
train <- read.csv("I:/Wollongong/1 st Semester/Big Data Analytics/workspace/Big-Data-Analytics-Practice/train.csv", header = TRUE)
test <- read.csv("I:/Wollongong/1 st Semester/Big Data Analytics/workspace/Big-Data-Analytics-Practice/test.csv", header = TRUE)

# Add a "survived" variable to the test set to allowing for combining data sets
test.servieved <- data.frame(Survived = rep("None", nrow(test)), test[,])

#combine data sets
data.combined <- rbind(train, test.servieved)

#A bit about R data types (eg : factors)
str(data.combined)