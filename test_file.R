x <- 10
y <- 1:11
plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))
