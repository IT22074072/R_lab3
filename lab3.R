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




#univariate analysis
gender.freq<-table(Gender)  #frequency tables
acc.freq<-table(Accommodation)
gender.freq
acc.freq

#pie chart
pie(gender.freq,"Pie chart for gender")
pie(acc.freq,"Pie chart for accommodation")

#barplot
barplot(gender.freq,main = "Bar plot for gender", ylab = "Frequency")
abline(h=0)
barplot(acc.freq, main = "Bar plot for accommodation", ylab = "Frequency")
abline(h=0)

#boxplot
boxplot(Age,main = "Boxplot for age",ylab="Age", outpch=8)
