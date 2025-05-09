library(data.table)

set.seed(1234)

n = 1000
dt <- data.table(id = 1:n)
dt[, x1 := rnorm(.N, mean = 0, sd = 1)]
dt[, x2 := runif(.N, min = -1, max = 1)]
dt[, y:= 2 * x1 + x2 + 0.5*rnorm(.N)]

model <- lm(y ~ x1 + x2, data = dt)
rows <- 1:nrow(dt)
summary(model)

plot(model)