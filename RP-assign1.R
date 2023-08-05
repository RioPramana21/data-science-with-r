# Rio Pramana - 2023318129

# Q1.

#i):
area <- pi * 3^2

#ii):
area2 <- pi * 5^2
difference_ratio <- round(area2/area, 2)
print(difference_ratio)
#it is 2.78 times bigger

# Q2.

x <- c(3, 1, 5, 7, 10:15); y <- rep(1:5, c(1,3,2,2,1))
#i):
print(length(x))
#x has 10 elements

#ii):
y <- y[-length(y)]

#iii):
y[3] %% 2 == 0
#output is TRUE

#iv):
z <- c(x[1:3], tail(y, 3))

#v):
unique(z[z < 5 & !z %% 2 == 0])

# Q3.

#i):
m1 <- matrix(c(1:4, 44:41), 4, 2)

#ii):
m2 <- t(m1)

#iii):
m3 <- cbind(m1, seq(2, 8, 2))

#iv):
m4 <- rbind(m2, seq(3, -6, -3))

#v):
head(m3[, 3], 3) * tail(m4[2,], 3)
#Output is 86 168 246

# Q4.
speed <- c(14, 20, 17, 13, 21, 19, 12, 16, 24, 18, 15)

#i):
speed_factor <- cut(speed, breaks = c(0, 14, 19, 100), labels = c("Fast", "Medium", "Slow"))

#ii):
speed_factor[2] < speed_factor[3]
#It throws an error because the factor is still unordered..
#.. so R will not know who is less or who is more

#iii):
new_speed_factor <- ordered(speed_factor, levels = c("Slow", "Medium", "Fast"))

#iv):
new_speed_factor[length(new_speed_factor)] > new_speed_factor[2]
#output is TRUE

#v):
length(new_speed_factor[new_speed_factor < "Fast"])

# Q5.

#i):
yut <- sample(c("Do", "Ge", "Gul", "Yut", "Mo"), 10, replace = TRUE, prob = c(1/4, 3/8, 1/4, 1/16, 1/16))
#print(yut)

#ii):
print(length(yut[yut == "Do"]))
print(length(yut[yut == "Ge"]))
# In my case, Do appeared 3 times and Ge appeared 5 times
# "Ge" appeared 2 times more than "Do"
# This is reasonable given that Do has a chance of 25%..
#..while Ge has a bigger chance percentage of 37.5%

#iii):
resampled_yut <- sample(c("Do", "Ge", "Gul", "Yut", "Mo"), 10, replace = TRUE)
#print(resampled_yut)

#iv):
print(resampled_yut <- sample(c("Do", "Ge", "Gul", "Yut", "Mo"), 10, replace = TRUE))
print(length(resampled_yut[resampled_yut == "Do"]))
print(length(resampled_yut[resampled_yut == "Ge"]))
# In my case, Do only appear the same number of times as Ge once
# So, they do not appear the same number of times in every sample
# This is because sample() is a way to pick elements randomly, so they are not guaranteed to..
#..always appear the same number of times even though they have equal probabilities