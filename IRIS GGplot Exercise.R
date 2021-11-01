
install.packages("ggplot2")

# Exercises for ggplot

library(ggplot2)
?iris
names(iris)
head(iris)

# Exercise 1
# Plot density chart for column Sepal Width of Iris Dataset. Hint : density().

ggplot(iris,aes(Sepal.Width,fill="black"))+
  geom_density()


# Exercise 2
# Compare Sepal.Length with Sepal.Width. Also apply Color format wrt Species
# Hint : point().

ggplot(iris,aes(Sepal.Length,Sepal.Width,color= Species)) +
  geom_point()
  


# Exercise 3
# This time you have to make bar chart for Species. Also try to fill it with unique colors
# Hint : bar().
# 

ggplot(iris,aes(Species))+
  geom_bar(fill=rainbow(3))


ncol(iris)

# Exercise 4
# You Nailed it till now.
# This time, create object 'df' and save "iris" dataset to it.
# Assuming flowers dimensions are square in shape, you have to find area of sepal (lentgh * breadth) and petal(lentgh * breadth).
# Then compare the areas and use color option to differentiate wrt 'Species'
# Add title, ylab, xlab.
# Hint : mutate funtion of dplyr and bar.
# 

df = as.data.frame(iris)
df = df %>%
  mutate(Sepal=Sepal.Length*Sepal.Width,Petal=Petal.Length*Petal.Width)
df

ggplot(df,aes(Petal,Sepal,color=Species))+
  geom_bar(stat="identity")+
  labs(title="Petal Vs Sepal")
