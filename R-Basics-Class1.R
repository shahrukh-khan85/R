# Pane Layout : Tools----> Global Options------>paneLayout
# We can adjust panes 

# Shortcuts

# Run selected lines of code ----> ctrl+enter
# Quit the R   -------> ctrl+q
# Restart R ------> ctrl+shift+F10
# Run the entire lines of code ---------> alt+ctrl+r
# Clear the output screen ------> ctrl+L
# comments ----> #
# Comments multiple lines at once ------> ctrl+shift+c


# working directory
getwd()

# Change the working directory to the folder where we are saving all the docs
# So when we want to open a file we can directly pass file name
setwd("C:\\Users\\Shahrukh\\R")

getwd()

# Importing packages in R

library(readxl)


# Global Environment Variable
# get all environment variables, functions, data
ls()
num=10


f1 = function(x){
  return (x)
}

df = as.data.frame(Seatbelts)
ls()


# To delete variable
rm(df)
ls()

# To delete all variables
rm(list=ls())

ls()



# How to write in R

# Declaring varibale
x = 100
y = "Joy"

## Data Types in R
# Fundamental data types in Python ----> Int, float, string, bool, complex

# Data Types in R-------> int, double, character, logical, complex, raw  

# 1.Character
# Collection of character (Alphabets, numbers, special characters) written in
# Single('') or double ("") quotes

name = "R programming"
place = "delhi"

# How to check type of variable

# Python ----> type(variablename)
# R ----> typeof(variablename)

typeof(name)
typeof(place)

# print we use to display output
print(name)
print(typeof(place))


# 2. Double
x = 100
y = 12.25
print(typeof(x))
print(typeof(y))


# 3. Integer ---> use capital "L" along with the number
x1 = 12L
x2 = 42L
print(typeof(x1))
print(typeof(x2))



# 4. Complex ----> real+ (i) imaginery

c1 = 3 +4i
c2 = 3i

print(typeof(c1))
print(typeof(c2))

# 5. Logical - TRUE, FALSE

b1 = TRUE
b2 = FALSE 
print(typeof(b1))
print(typeof(b2))



# 6. RAW - hexadecimal represenation of ASCII values of characters
charToRaw("Hello")
charToRaw("A")

65/16

65%%16

## Help in R
# Header--->help---->Rhelp
# help(print)
# ?print("Shahrukh Khan")



######Packages######

# readxl ----> reading spreadsheet
# ggplot2  ------> plotting 
# dplyr -----> Data manipultaion
# mlbench  -----> external datasets
# fastdummies - converting categorical data to numerical data

install.packages("readxl")
install.packages("vioplot")






# Checking the data type of the variable
# typeof(variablename)  - to check the data type of the variable
# which function we use in python return True 
# if object belongs to specified form  (instances i.e, is.numeric, is.alphabets etc)

# Similarly we use is.dataTypename(variablename) in R

x1 = 40
x2 = "shahrukh khan"
x3 = 39L

is.character(x1)
is.character(x2)
is.character(x3)

is.integer(x1)
is.integer(x2)
is.integer(x3)

is.double(x1)
is.double(x2)
is.double(x3)

# Changing the data type in R (Coercion)
# syntax - as.classname(variablename)
# Suppose we are taking 2 numbers as inputs
# We assume let us take x as 12
# and y as 14

a1 = as.integer(x1)

b1 = as.integer(TRUE)
b2 = as.double(F)

b3 = as.logical(0)
b4 = as.logical(1)

c1 = as.character(24)
c2 = as.integer("24")

c3 = as.integer("24lakhs")   
# when converting anyother data type to integer 
# we need to see that the other data type only contains digits
# we it contains any other things it will give error


# We can change data type not only for fundamental data types (character, integer, double,Logical,complex, RAW)
# but also for the derived data types(list etc)



# Assignment operator (variable <- literal) (literal -> variable) (=)
# Arrow(<-) should be in the direction of the variable.
"100" -> x5
x6 <- 70

x7 = "abc"

"abc" = x8
# When using equalto (=) sign the variable name is always on the left hand side

# The assignment operator(<-/->) should not be used inside the functions

mat = matrix(data=c(4, 55),nrow=1,ncol<-2)
mat
# When we use arrow(<-) as the assignment inside the function/matrix is also taken
# as variable in the global environment which is not required
# it is always recommended to use equal to(=) when declaring anything 
# inside functions or matrix

mat = matrix(data=c(4, 55, 100, 0),nrow<-1)
mat
