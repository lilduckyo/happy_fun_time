x <- 10
y <- 1:11
plot(mtcars$disp, mtcars$mpg)

#lm: linear model
abline(lm(mpg ~ disp, data = mtcars))

install.packages(c("car", "ggplot2"))

# two ways to add library
library(car)
# :: means look into the "car" and find xx inside.
car::scatterplot(mpg ~ disp, 
                 data = mtcars)

#ggplot2 is a plotting package that makes it simple to 
#create complex plots from data in a data frame.
library(ggplot2)

ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm")

# ??? what does the theme_minimal mean
theme_minimal()

#install "plotly"
install.packages('plotly')

my_plot <-ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") + theme_minimal()

plotly::ggplotly(my_plot)

#how to read a file, first upload them into the same folder

st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")
st_joe_land <- read.csv(file = "stJoeLand.csv")

# show the table in the project
View(st_joe_land)

#read.r---data.table
#two ways to read the table
st_joe_land_readr <- readr::read_csv(file = "stJoeLand.csv")

st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")

# ?? what does the $'Zip Code' do in console?

#!!You can save any R objects like this!! 
save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")

my_mean <- function(numbers) {
  # The length function gives the length
  # of a vector. Use nrow for number of
  # rows in a data.frame.
  numbers_length <- length(numbers)
  numbers_sum <- sum(numbers)
  numbers_average <- numbers_sum / numbers_length
  # The return function isn't strictly necessary,
  # but it is a safe way of handling this. You could
  # also just put numbers_average at the end and
  # it would print out.
  return(numbers_average)
}

my_mean(st_joe_land$sale_price)
