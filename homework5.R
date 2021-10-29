ID <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
factorA <- c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1)
factorB <- c(0, 0, 0, 0, 1, 0, 0, 1, 1, 1)
responsevariable <- c(1, 2, 3, 6, 5, 3, 5, 8, 9, 10)

df <- data.frame( factorA, factorB, responsevariable)
df
  
((sum(df$responsevariable))^2 / 10 ) - (  (   sum(factorA*      (sum(df$responsevariable))   )^2   ))

(sum(0 + 1 + 2 + 3 + 6 + 5 + 3 + 5 + 8 + 9 + 10 )^2)/10 - ((0 + 1 + 0+ 2 + 0 + 3 + 0 + 6 + 0 + 5 + 1 + 3 + 1 + 5 + 1 + 8 + 1 + 9 + 1 + 10)^2)/(sum(1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)) 
#double sum is just indexing across a matrix .... 
#the above is still missing a sum-- not quite getting it conceptually, ask jen-yu?




#######################################
#part b 

#####
