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





#Bivariate Analysis
#Two-way frequency table
gender_acc.freq<-table(Gender, Accommodation)
gender_acc.freq

#stack bar chart
barplot(gender_acc.freq, main = "Gender and accommodation", legend=row.names(gender_acc.freq))
abline(h=0)

#clustered bar charts
barplot(gender_acc.freq,beside = TRUE, main = "Gender and accommodation", legend = row.names(gender_acc.freq))
abline(h=0)









#Describe age with gender/accommodation

#side by side boxplot
#age with gender
boxplot(Age~Gender, main="Boxplot for Age by Gender", xlab="Gender", ylab="Age")
#age with accommodation
boxplot(Age~Accommodation, main="Boxplot for Age by Accommodation", xlab="Accommodation", ylab="Age", outpch=18)









#mean age for all the combinations of gender and accommodation
xtabs(Age~Gender+Accommodation) / gender_acc.freq



