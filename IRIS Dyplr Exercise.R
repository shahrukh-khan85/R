
getwd()

# Exercises for dplyr

library(dplyr)
?iris
names(iris)
head(iris)
# Exercise 1
# Select the first three columns of the iris dataset using their column names. HINT: Use select().
select(iris,c("Sepal.Length","Sepal.Width","Petal.Length"))
select(iris,Sepal.Length,Sepal.Width,Petal.Length)


# Exercise 2
# Select all the columns of the iris dataset except "Petal Width". HINT: Use "-".
select(iris,-c("Petal.Width"))
str(iris)
  

# Exercise 3
# Select all columns of the iris dataset that start with the character string "P".
select(iris,starts_with("P"))



# Exercise 4
# Filter the rows of the iris dataset for Sepal.Length >= 4.6 and Petal.Width >= 0.5.
filter(iris,Sepal.Length >= 4.6 & Petal.Width>=0.5)


# Exercise 5
# Pipe the iris data frame to the function that will select two columns (Sepal.Width and Sepal.Length). HINT: Use pipe operator.

fun =function() {
  iris %>%
  select(Sepal.Width,Sepal.Length)
}
fun()

# Exercise 6
# Arrange rows by a particular column, such as the Sepal.Width. HINT: Use arrange().
arrange(iris,Sepal.Width)


# Exercise 7
# Select three columns from iris, arrange the rows by Sepal.Length, then arrange the rows by Sepal.Width.

iris %>%
df = select(iris,1:3)
df
arrange(df,Sepal.Length,Sepal.Width)

# Exercise 8
# Create a new column called proportion, which is the ratio of Sepal.Length to Sepal.Width. HINT: Use mutate().
mutate(iris,proportion=(Sepal.Length/Sepal.Width))



# Exercise 9
# Compute the average number of Sepal.Length, apply the mean() function to the column Sepal.Length, and call the summary value "avg_slength". HINT: Use summarize().
iris %>%
  summarise("avg_slength"=mean(Sepal.Length),n())



# Exercise 10
# Split the iris data frame by the Sepal.Length, then ask for the same summary statistics as above. HINT: Use group_by().
iris %>%
  group_by(Sepal.Length) %>%
  summarise("avg_slength"=mean(Sepal.Length),n())


