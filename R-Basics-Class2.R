rm(list=ls())
# How to write variable names

# 1. Variables names can be alphabets, numbers, _ and .



place70 = "New Delhi"
place_70 = "UP"
place.90 = "Delhi"
place = "Kolkata"

# 2. only numbers and _(underdscore) cant be used as variable names
# variable name cant start with number or _
7070place = "JK"
_place = "Chennai"

# variable name can be dot(.) but it is temporary variable and it is not reflected in
# global environment
.place = "Srinagar"
. = "Punjab"



# 3. Variable names can be of any length

x=1
myforestclassifier = 20
dsfkjdfkbfkgfkgb46y24694701 = "Khan"

# 4.Variables name should not be keywords or reserved words

# else = 100
# break = 200

# 5. Names cant have special characters
place 7070 = 400




##### Input and output function
# Input function ------> readline
# Taking input from the user

a = readline("What is your name: ")
price = readline("Enter the price of the product: ")
##### readline by default saves everything in string data type
# hence need to do coercion to change it into required data type

price = as.integer(readline("Enter the price of the product: "))

# Output
# print -display output in r
name = "shahrukh"
sal = 10000
dept = "abc"
print(name,sal,dept,700)

print(c(name,sal,dept,700))
print(name)
print(sal)
print(700)

# paste -----> it works similar to print in python

paste(name,sal, dept,700)


# Objects in R (Derived data types)
# Vectors, lists, matrix, factor, dataframes
# 1.Vector is a sequence of homogeneous elements
# Represented by c()

# How to create a vector
# typeof()---> always give atomic vector or fundamental data types
# we need to use is.vector(variable name) to check whether it is a vector
# anything represented in R in 1 dimension is taken ad vector
# even if it other data type and mentioned in 1 Dimension it will be considered as vector
# When we use : by default the data type is integer
# normally if we mention any digit it is taken as double in r

v1 = 1:10
v1
typeof(v1)
is.vector(v1)
# sequence in reverse order

v2 = 10:1
v2
typeof(v2)
is.vector(v2)

v3 = "1":"10"
v3
is.vector(v3)
typeof(v3)
# even if we use string as digits and use : (colons) by default it will be considered
# as integer

# Write vectors using c()
# Precendence order in R
# Character----->Complex---->double----->integer------->Logical
a1 = c(1,2,3,4,5,6)
typeof(a1)
is.vector(a1)

a2 = c(10,20,30+4i,"Moons and Stars", "F", TRUE, 30.40, F)
a2
typeof(a2)
is.vector(a2)
# Converts everything in Character data type

a3 = c(10,20,30+4i,TRUE, 30.40, F)
a3
typeof(a3)
is.vector(a3)
# Converts everything in complex data type

a4 = c(10,20,TRUE, 30.40, F)
a4
typeof(a4)
is.vector(a4)
# Converts everything in double data type

a5 = c(10L,20L,TRUE, F)
a5
typeof(a5)
is.vector(a5)
# Converts everything in integer data type

a6 = c(TRUE, F)
a6
typeof(a6)
is.vector(a6)
# Converts everything in Logical data type


#### Inbuilt functions to create a vector
# 3. Sequence of letters

vec1 = LETTERS[1:5]
vec1
typeof(vec1)
is.vector(vec1)

vec2 = letters[1:5]
vec2
typeof(vec2)
is.vector(vec2)

# 4. Sequence method  (Similar to range function in python range(start,stop, stepsize))
#syntax for sequence

# Note: to know arguments inside the function we can use the below method.
args(matrix)
args(data.frame)
?matrix

s1 = seq(from=150, to=300)
s1

s2 = seq(from=150, to=300, by=15)
s2

s3 = seq(from=150, by=15, length.out=30)
s3

s4 = seq(from=150, to = 150+(15*29),by=15)
s4

s5 = seq(from=0, to=100, by=2)
s5

s6 = seq(from=0, to=100, by=3)
s6

s7 = seq(1,50,2)
s7
# By default it will take (from,to,stepsize)

s8 = seq(from=10, to=100, by=1, length.out=20)
# We cant have by and length.out in the same syntax or line in seq function

# 5. Repetition of values
# Syntax: rep(x,each,times)
# each- It repeats each individually elements in sequence
# times - It repeats whole sequence

r1 = rep(10,each=1)
r1

r2 = rep(10, times=1)
r2

r3 = rep(c("$","%","/"), each=2)
r3

r4 = rep(c("$","%","/"), times=2)
r4

r5 = rep(c("$","%","/"), each=2,times=2)
r5


# $$****/
# print the above using repitition function

r6 = rep(c("$","*","/"),times = c(2,4,1))
r6

r7 =rep(c("$","*","/"), each = c(2,4,1))
r7


#### Random Numbers sequence (vectors)
# Syntax = runif(n, min, max)
# n-numbers we want, min=minimum number, max = maximum number
# returns double value

a1 = runif(10,30,40)
a1

a2 = as.integer(runif(10,30,40))
a2

# to get the same random number every time we can use seed
# syntax - set.seed()

a3 = runif(10,30,40)
a3

set.seed(10)
a4 = runif(10,30,40)
a4
typeof(a4)
is.vector(a4)


###### Math functions in R

# Addition   (+)
b1 = 25+10
b1

# Subtraction  (-)
b2 = 35-20
b2

# Multiplication (*)
b3 = 35*5
b3

# Division  (/)
b4 = 25/5
b4

# Modulus  (%%)
b5 = 26%%5
b5

# Power (**)
b6 = 5**5
b6

##### Relational operators
# Greater than (>)
c1 = 10>25
c1

# Lesser than (<)
c2 = 10<20
c2

# Greater than equal to(>=)
c3 = 10>=9
c3

# Lesser than equal to (<=)
c4 = 9<=10
c4

# equal to (==)
c5 = 9==9
c5

# not equal to (!=)
c6 = 10!=12
c6

# Logical Operators
# And  (&)
d1 = (10>9) & (10<10)
d1

# or (|)
d2 = (10>9) | (9>8)
d2

# not (!)
d3 = !(10>7)
d3


# Membership Operator (%in%)
set.seed(1)
e1 = as.integer(runif(20,10,30))
e1

100 %in% e1

11 %in% e1

# Inbuilt Math functions
# min() - minimum number in sequence
min(e1)

# max() - maximum number in sequence
max(e1)

# mean() - mean of the sequence
mean(e1)

# median() - median of the sequence
median(e1)

#sum() -  sum of the sequence
sum(e1)

#round() -  rounds number to decimals 
e2 = as.double(e1)
e2
typeof(e2)
typeof(e1)

e3 = round(e1,2)
typeof(e3)


## Sqrt- sqrt root of number

sqrt(16)
sqrt(e3)


# exponential - exponential of the number
exp(10)
exp(e3)


## Vector Operations

g1 = c(10,0)-c(1,1)

### Here both the sequence should have same length
g2 = c(10,0) * rep(10,times=5)


# Recycling of sequence
# If we are applying mathematical operations on two vectors and one vector
# is shorter in length it will start working with respect to shorter one
g3 = c(10,2,2) * c(1,2)
g4  = c(1,2) * c(10,2,3)
g3
g4
wd