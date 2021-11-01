getwd()
#### Class 5 -Matrix

# Matrix:
# Data objects in R with rows and columns are called matrix

# How to create a matrix 
m1 = seq(100,by=10,length.out=12)
m1

mat1 = matrix(data=M1)
mat1

set.seed(20)
s2  = as.integer(runif(12,100,200))
s2
mat2 = matrix(data=s2)
mat2

# Reshaping/flatten in R using nrow and ncol parameters

mat3 = matrix(data=s2,nrow=4,ncol=3)
mat3

mat4 = matrix(data=s2,nrow=3,ncol=3)
mat4

mat5 = matrix(data=s2,nrow=5,ncol=4)
mat1 = matrix(data=m1,nrow=4,ncol=3) # By default matrix uses values columnwise
mat1


# Showing values row wise
mat6 = matrix(data=m1,nrow=4,ncol=3,byrow=T)
mat6


##########################
# Basic operations in matrix
# 1. length
length(mat6)

# 2. Indexing/Slicing in matrix
# Syntax : matrixname(rows,columns)
mat7 = matrix(data=m1,nrow=2,ncol=6,byrow=T)
mat7
mat7[1,1]
# Etract 1st row
mat7[1,]

# Extract 5th column
mat7[,5]

# Extract below data
 # [,3] [,4] 
 #  120  130  
 #  180  190  
mat7[,3:4]


# # Extract the below data
#       [,1] [,4] [,6]
# [1,]  100  130  150
# [2,]  160  190  210
mat7[,c(1,4,6)]



#3. Updation

set.seed(20)
s2  = as.integer(runif(12,50,100))
s2
mat8 = matrix(data=s2, nrow=3,ncol=4)
mat8

# Replace 66 by -111
mat8[3,3] = -111
mat8


# Extract below data
#       [,1] [,3] [,4]
# [2,]   88   53   85
# [3,]   63  -111  87

mat8[-1,-2]
mat8[2:3,c(1,3,4)]


#### Naming rows and columns
# Syntax rownames()   # namubg rows
# Syntax colnames()   # naming columns

rownames(mat8) = c("A","B","C")
mat8
colnames(mat8) = c(LETTERS[10:13]) 
mat8
mat8

#### Homework
set.seed(20)
s4 =seq(10,120,by=10)
s4
mat9 = matrix(data=s4,nrow=10,ncol=3)
mat9

mat9
colnames(mat9) = c("P","Q","R")
rownames(mat9) = c("G"=seq(10,100,by=10))
mat9


# Extract the below
#     P   Q   R
# G  70  50  30
# H  80  60  40

mat9[c("G","H"),]
mat9[7:8,]

# Extract the below
#     P   Q   R
# A  10 110  90
# B  20 120 100
# C  30  10 110
# E  50  30  10
# F  60  40  20
# G  70  50  30
# H  80  60  40
# I  90  70  50
# J 100  80  60

mat9[-4,]


# Extract the below
#     Q   R
# A  110 90
# C  10  110
# F  40  20
# G  50  30
# I  70  50

mat9[c(-2,-4,-5,-8,-10),-1]
mat9[c("A","C","F","G","I"),c("Q","R")]
is.matrix(mat9)

# Concatenation/Append
# In R concatenation is possible only when the different matrix are of same rows or same columns
# if not we cannot perform concatenation
# Syntax:- rbind() - concatenation of rows of same row length
# Syntax: - cbind()- concatenation of columns of same columns length

rbind(mat1,mat3)

rbind(mat7,mat9)  # If rows length is not same it gives error

cbind(mat3,mat6)
cbind(mat7,mat3)  # If columns length is not same it gives error

##############################################################
# DataFrames:
# Objects hvaing rows & Columns
# 2 Dimension

## How to create a dataframe
# From list

# Syntax = as.data.frame(data)
set.seed(20)
listName = list("G"=seq(10,100,by=10), "H"= LETTERS[1:10],"I"=as.integer(runif(10,100,110)))
listName

df = as.data.frame(listName)
df

vec <- c(20, 30, 50, NA)
mean(vec)
str(vec)
str(m1)
m1

# from matrix

mat1
is.matrix(mat1)
is.vector(mat1)
is.list(mat1)

df1 = as.data.frame(mat1)
df1
is.data.frame(df1)
typeof(df1)
tail(df1)



###### Inbuilt datasets
data()
AirPassengers
Orange = as.data.frame(Orange)
Orange
is.data.frame(Orange)
str(Seatbelts)
is.data.frame(Seatbelts)

Seatbelts = as.data.frame(Seatbelts)
Seatbelts
is.data.frame(Seatbelts)


# External Datasets:
# Import the package Syntax: library(PackageName)
# Import the dataset Syntax: Data(tableName)


iris
str(iris)
