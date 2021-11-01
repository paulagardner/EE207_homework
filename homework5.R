
###########PART 1 

factorA <- c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1)
factorB <- c(0, 0, 0, 0, 1, 0, 0, 1, 1, 1)
responsevariable <- c(1, 2, 3, 6, 5, 3, 5, 8, 9, 10)

df <- data.frame( factorA, factorB, responsevariable)
df

sum(responsevariable[1:5]) #trying to do this as sum(df$responsevariable)) returns a error: object of type 'closure' is not subsettable
sum(responsevariable[6:10])


(    (( sum(responsevariable[1:5])^2 )/5)   +  ( sum( responsevariable[6:10] )^2)/5     )           -         (  ((sum(responsevariable[1:5]) + sum(responsevariable[6:10])) ^2 ) / (5 + 5) ) 

(    (( sum(responsevariable[1:5])^2 )/5)   +  ( sum( responsevariable[6:10] )^2)/5     )           -         (((  sum(1 + 2 + 3 + 6 + 5) + sum(3 + 5 + 8 + 9 + 10) ) ^2 ) / (5 + 5) )  #conceptually/making sure the above is doing what I'm expecting






########################PROBLEM 3 

#set up the df 
observations <- c(1.25, 0.88, 1.22, 1.15, 1.41, 0.98, 1.30, 1.19, 1.43, 1.07, 1.37, 1.44, 1.43, 1.43, 1.42, 1.41)
colony <- c(1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4)
seedsize <- c('s', 's', 's', 's', 'm', 'm', 'm', 'm', 'l', 'l', 'l', 'l', 'xl', 'xl', 'xl', 'xl')

df3 <- data.frame(observations, seedsize, colony)
df3

#
onewayaov <- aov(observations ~ seedsize)
summary(onewayaov)


# part b: do the randomized block anova
seedsize <- as.factor(seedsize)
colony <- as.factor(colony)

modelrb <- aov(observations ~ colony + seedsize)
summary(modelrb)

#c 