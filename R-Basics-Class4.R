# Class 4

getwd()
setwd("C:\\Users\\Shahrukh\\R")
getwd()

# List: Collection of heteregenous elements
# Represents in key value pair
# Syntax : list()

# rm(list=ls())
set.seed(1)
listName = list(seq(10,100,by=10),LETTERS[1:10],as.integer(runif(10,100,150)))
listName              

is.vector(listName)
is.list(listName)

##### Accessing the elements inside the list

listName[[1]][1]

listName[[2]][5]


# Converting list into Dataframe
# We can convert list into dataframe only when length of all the values in the list 
# are same, if the elements are less recycling is done

s1 = list(seq(10,100,by=10),LETTERS[1:5])
df1 = as.data.frame(s1)
df1
is.data.frame(df1)
is.vector(df1)

# Basic Operations on List

#1. Assigning names to the columns
s2 = list("G"=seq(10,100,by=10),"H"=LETTERS[15:20],"I"=c(TRUE,FALSE,F))
s2
#2.  Length : How many key-value pairs
length(s2)

# 3,Calling a value against key
s2[[1]][9]        # Using Index numbers
s2["G"]           # Using key names
s2$G              # using $ (dollar sign)


##### Questions
# 1. Extract Q from s2
s2[[2]][3]
s2[["H"]][3]
s2$H[3]

# 4. Slicing a value against a key
s2$G[1:5]
s2[["G"]][1:5]
s2[[1]][1:5]


s2$I[1:2]
s2[[3]][1:3]
s2[["I"]][1:2]

# 5. Updating the value against the key

s2[[1]] = seq(100,200,by=10)


# 6. Adding a key value in the list
set.seed(1)
s2[[4]] = as.integer(runif(10,100,120))
s2                   

s2[["K"]] = LETTERS[1:5]  # If we use character as key names, new key is created and next available index number
s2

s2[[10]] = c(10,20,30)    # if we use number as key name to add a key value to list it will add to that particular index number mentioned
s2


# 7. Dropping Key-value pair

s2[[10]] = NA
s2[[10]] = NULL
s2[[6]] = NULL

# 8 . Update the value in a key value
s2 = list("G"=seq(10,100,by=10),"H"=LETTERS[15:20],"I"=c(TRUE,FALSE,F))
s2

s2[[3]][3] = TRUE
s2


# 8 Naming a list

s3 = list(seq(10,100,by=10),LETTERS[15:20],c(TRUE,FALSE,F))
s3

# Assigning names to keys using names functions
names(s3) <- c("G","H","I")
s3

# Manually assigning names to each key
s3 = list("G"=seq(10,100,by=10),"H"=LETTERS[15:20],"I"=c(TRUE,FALSE,F))
s3

# 9. Extracting the values of the list

for (i in 1:length(s3)) {
  print(s3[[i]])
}

for (i in 1:length(s2)){
  print(s2[[i]])
}


# 10. Extracting the key names
# using names function
names(s3)



########################################################

# Factor: [Similar to label encoder in sklearn library in python]
# Defined as collection of homogeneous elements
# 1Dimension
# Syntax: factor(data, levels, ordered)
# Convert categorical to numerical data
# Specifying class for target variable in Machine Learning
# As there is limitations to vectors factors were formed

t_shirts = c("S", "L", "M", "XL", "M", "XL" , "S","M","L")
t_shirts
f1 = factor(x =t_shirts)
f1
# If levels are not defined then levels are taken in alphabetical order

level_ = c("S","M","L","XL")
f1 = factor(x =t_shirts,levels = level_)
f1
f1[2]>=f1[3]
# Unless we defined ordered argument in factor, relationship is not established

f1
f1 = factor(x=t_shirts,levels = level_, ordered = TRUE)
f1
f1[2]>=f1[3]

# Labels are used to convert categorical to numerical
lab_ = c(0,1,2,3)
f1 = factor(x=t_shirts,levels =level_,ordered=T,labels =lab_)
f1

###########################################################

# Functions in R
# Syntax:  functions(arq1,arg2){

# return (value)
#}

# In R we are not use def like we use in python to write a function and 
# In r we need to assign function to a variable then only we can call/execute the function


# Factorial using function

function(x){
  f = 1
  for(i in x){
    f = num*f
  }
  return(f)
}

func <- function(num){
  f = 1
  for(i in num:1){
    f = i*f
  }
  return(f)
}
func(5)


paste("Factorial of 9", "=", func(9))

# Types of arguments in functions
# Positional argument
# keyworder argument
# Default argument

area_circle = function(r,pie){
  area = pie * r * r
  return(area)
}

area_circle(5,3.14)     # positional arguments
area_circle(pie = 3.14, r=10)  # Keyworded argument
area_circle = function(r,pie=3.14){   
  area = pie * r * r
  return(area)
}
area_circle(10)     # Default argument
area_circle(10,pie=10)
area_circle(pie=10,10)


