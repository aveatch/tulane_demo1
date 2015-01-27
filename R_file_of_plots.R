install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")
#load libraries!
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
head(iris)
summary(iris)
iris[1:2,]
df <- melt(iris, id.vars="Species")
df[1:2,]
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color=Species))
myplot + geom_point(aes(shape = Species), size = 3)
# Ploting  1000 random rows from diamonds
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(data = d2, 
       aes(x = carat, 
           y = price, 
           color = color)) + 
  geom_point(size = 2)
library(MASS)
bwt <- ggplot(birthwt,
       aes(factor(race), bwt,
           fill = race)) +
  geom_boxplot() +
bwt + guides(fill=FALSE)
summary (bwt)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  facet_grid(~ Species)
library(RColorBrewer)
display.brewer.all()
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = 3)
?palette
h <- ggplot(faithful, aes(waiting))
h + geom_histogram(binwidth = 30, fill (magenta))

df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge", color = 550)

ggplot(d2, aes(x = clarity, fill = cut)) +
  geom_bar(position = "dodge")

