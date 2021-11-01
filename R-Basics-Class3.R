# Vectors
# getwd()
# setwd("C:\\Users\\Shahrukh\\R")
# getwd()

# 1. Length function
set.seed(10)
vec = as.integer(runif(10,10,20))
length(vec)
vec

# 2. Indexing
vec[1]
vec[3]
vec[length(vec)]

# 3. Urinary Operators (-) # Deletes the index and returns the remaining elements
vec[-2]
vec[-1]

# 4.Slicing
vec[1:3]

vec[7:length(vec)]

vec[(length(vec)-3):length(vec)]

vec[length(vec)-3:length(vec)]

vec[10:2]


# We can extract more than one specific indexes using vectors

vec[c(1,3,5)]

# Extract everything except few using Urinary operations

vec[-c(1,3,5)]

# 5. Naming a vector
vec
names(vec) <- LETTERS[1:10]
vec

# We can extract single elements through index
vec["A"]
#vec["A":"D"]
# We cannot slice using names assigned to the vectors
# vec[-"A"]

vec[1:3]
vec[-1]

# 6 Membership Operators (%in%)
set.seed(10)
vec1 = as.integer(runif(10,50,70))
vec1

100 %in% vec1

51 %in% vec1

# 7. Query in vector showing 
vec1[vec1>60]

vec1<50

vec1>20

# 7. Update the element

vec[1] <- 80

vec[length(vec)] <- 60

vec[4] <- TRUE
vec[5] <- F

vec[6] <-"Hi"
vec

# Conditional Statements and Loop

# ifelse, for , while, break, next

# 1. ifelse
# Converting the datatype of vector 
vec = c(seq(10,100,10))
typeof(vec)
print(typeof(vec))
ch = readline("Mention (a) for int, (b) for double , (C) for character: ")

if(ch=="a"){
  vec = as.integer(vec)
  print(vec)
  print(typeof(vec))
} else if (ch=="b"){
  vec = as.double(vec)
  print(vec)
  print(typeof(vec))
}else{
  vec = as.character(vec)
  print(vec)
  print(typeof(vec))
}


help(print)


##### for
# iterating through the vector
s1 = seq(10,100,10)
s1

for (i in s1){
  print(i)
}

for (i in 1:length(s1)){
 print(s1[i])
}

##### Repeating the sequence 10 times

for (i in 1:10){
  print("Hi")
}

#### Print the below format
# *
# **
# ***

# With " " quotes
for (i in 1:3){
  print(rep("*",i))
}

# Quotes set to False
for (i in 1:3){
  print(rep("*",i),quote = F)
}

##### Break - exit the loop
# Break the loop if value is >50

for (i in s1){
  if(i>50){
    break
  }else {
    print(i)
  }
}

###### Next - skips the particular value and goes to the next element

for (i in s1){
  if(i==50){
    next
  }else{
    print(i)
  }
}


v1 = c(seq(1,10,3), seq(14,50,7))
v1

# Extract only odd numbers from v1 and save in new vector
a = c()
for (i in 1:length(v1)){
  if(v1[i]%%2==0){
    next
  }else{
    a[i] = v1[i]
  }
}
a

# for (i in v1){
#   if(v1[i]%%2==0){
#     next

#   }else{
#     a[i] = v1[i]
#   }
# }

b = c()
for (i in 1:length(v1)){
  if(v1[i]%%2==0){
    next
  }else{
    print(i)
    b = append(b , v1[i])
  }
}
b

# While loops
# Here first we have to declare a iterator same as python and we need to increase 
# the iterator +1  at the end

s1 = c(10,20,30,40,50,60)
pos = 1

while (pos<= length(s1)){
  print(s1[pos])
  pos = pos + 1
}

# Factorial Program using while function

# 5!

num = as.integer(readline("Enter a number to get factorial: "))
f = 1
x = num
while(num > 0){
  f = f*num
  num = num-1
}

paste("Factorial of", x , "=", f)

# Writing a detailed code for factorial

num = as.integer(readline("Enter a number: "))
if(num==0){
  print("Factorial of 0 = 1")
} else if (num>0) {
  x = num
  f = 1
  while (num > 0){
    f = f * num
    num = num-1
    paste("Factorial of ",x, "=",f)
  }
}else{
  print("Invalid Number")
}


# Ternary Operators
# Syntax - ifelse(test, yes, no)

a = 10
b = 20

ifelse(a>b,a,b)


installed.packages("stringr")
install.packages("stringr")
library(stringr)

word = "Hi India Team"
str_length(word)
str_to_upper(word)
str_to_lower(word)
str_replace_all(word,"a","z")
str_detect(word,"z")


##### Looping in R

for (i in word){
  print(i)
}
## Here while word is printed rather than single element as we have in python
# In R when there is character whole is treated as one element
# In R character are objects defined in sequence , In Python strings are collection
# of elements.Hence when we cannot loop through single element in R like we can in 
# python

# Assignment : extract words which ar having apple from below
fruits <- c("apple", "Custard Apple", "grapes", "PineapPLE", "mango","BANANA")
a = c()
for (i in fruits){
  i = str_to_lower(i)
  if(str_detect(i,"apple")){
    a = append(a,i)
  }
}
print(a)
