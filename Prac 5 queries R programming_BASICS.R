install.packages("readxl")
library(readxl)

x <- 10
x = 9
print(x)
typeof(x)

#datatypes in R and use 
num_vec <- c(1,2,3,4,5)
char_vec <- c("A","B","C")
print(num_vec)
print(char_vec)
typeof(num_vec)
typeof(char_vec)
mat <- matrix(1:6,nrow = 2,ncol = 3)
print(mat)

my_list <- list(name="Mohan",age=20,score = c(85,10,20))
print(my_list)
colors <- factor(c("Low","medium","high","Low"))
print(colors)
typeof(x)
typeof(num_vec)
typeof(mat)
print(my_list$name)
df <- data.frame(
  name = c("Alice","bob","Charlie"),
  age = c(20,30,40),
  scores = c(90,85,80)
)
print(df)
A <- c(1,2,3,4)
B <- c(5,6,7,8)
cbindAB <- cbind(A,B)
rbindAB <- rbind(A,B)
data <- read.csv("matrix.csv")
write.csv(mat,"matrix4.csv")
ls()
rm(A)
setwd("C:/Users/veera/OneDrive/Desktop/ADBMS MCA SEM 1/prac 5")
print(getwd())
data()
data(iris)
head(iris)
ls()
rm(num_vec2)
#Attaching and Detaching data
attach(iris)
print(Species)
detach(iris)

#Reading data from the consol.
input <- readline(prompt = "Enter name: ")
print(paste("Hello",input))

#Loading data from different data sources. 
library(writexl)
write_xlsx(iris,"excel_iris.xlsx")
library(readxl)
excel_data <- read_excel("iris_dataset.xlsx")

# Data Preprocessing in R

colnames(df)[2] <- "StudentAge"
print(df)
df$Grade <- c("A","B","C")
print(df)

#Handling missing data 
df$Grade <- c("A","B",NA)
is.na(df)
sum(is.na(df))
colSums(is.na(df))

subset_data <- subset(df,scores > 85)
print(subset_data)
