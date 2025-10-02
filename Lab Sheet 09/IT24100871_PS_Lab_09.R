#1
#i
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

#ii
t.test(baking_time, mu=46, alternative = "less")
