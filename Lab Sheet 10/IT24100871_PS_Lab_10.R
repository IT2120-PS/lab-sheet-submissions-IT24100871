#1
#i
#null hypotheses - Probability that customer's choice of four snack types (A, B,
#C, D) with equal probability of 0.25
#alternative hypotheses - At least one snack type exists such that probability of
#customer's choice will be different from 0.25

#2
observed <- c(120,95,85,100)
prob <- c(.25,.25,.25,.25)
chisq.test(x=observed,p=prob)

#3
#p value(0.08966) is greater than 0.05
#So that, do not reject null hypotheses at 5%
#Therefore we can conclude that Probability that customer's choice of four snack types (A, B,
#C, D) will be same which is 0.25.
