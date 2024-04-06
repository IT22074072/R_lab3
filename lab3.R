#import data set

data<-read.csv("DATA 3.csv", header = TRUE)
data

#get data in the editor mode
fix(data)

#rename the columns
names(data)<-c("Age","Gender","Accommodation")

#rename categorical data
data$Gender<-factor(data$Gender, c(1,2), c("Male", "Female"))
fix(data)

data$Accommodation<-factor(data$Accommodation, c(1,2,3), c("Stays at Home", "Boarded Students", "Lodging"))
fix(data)


#add our modifications into the imported data set
attach(data)
