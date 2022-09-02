x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)

fm <- lm(y ~ x)
summary(fm)

lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))

load("C:/Users/Zakaria Sule/Desktop/CUNY_CCNY/Courses/Household_Pulse_data.RData")
Household_Pulse_data[1:10,1:7]

attach(Household_Pulse_data)

summary(Household_Pulse_data)

summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])

summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])

summary(TBIRTH_YEAR[GENID_DESCRIBE == "transgender"])

summary(TBIRTH_YEAR[GENID_DESCRIBE == "other"])

summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])
mean(TBIRTH_YEAR[GENID_DESCRIBE == "female"])

sd(TBIRTH_YEAR[GENID_DESCRIBE == "female"])

mean(TBIRTH_YEAR[GENID_DESCRIBE == "male"])

sd(TBIRTH_YEAR[GENID_DESCRIBE == "male"])

summary(EEDUC)

im commenting on the household income because i realise that from the mean, high hh income are in Public school and the lower hh income are in private school.

Econ B2000, MA Econometrics
HW1
group members: Victoria, Mario and Zakaria
