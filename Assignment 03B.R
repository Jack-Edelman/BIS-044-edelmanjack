#loading data set
load("prrace08.rda")
ls(prrace08)

#declaring variables
x <- prrace08[,4]
y <- prrace08[,6]
z <- prrace08[,7]

#Setting base number of zero votes
sum_obama = 0
sum_mc_cain = 0

#For loop to determine who gets the votes for each state
for(prrace08 in 1:51){
  if(x[prrace08] > y[prrace08]){
    sum_obama <- sum_obama + z[prrace08]
  }else{
    sum_mc_cain <- sum_mc_cain + z[prrace08]
  }
}

#accounting for split nebraska vote
sum_obama <- sum_obama + 1
sum_mc_cain <- sum_mc_cain + 1

#Printing finals electoral vote counts
print(sum_obama)
print(sum_mc_cain)

