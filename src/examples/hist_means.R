set.seed(547)
N = 500 # number of iid random variables in our model
M = 1000 # number of times the algorithm will run

x = rnorm(N, 2, 1.5)

bmeans = c()
bvars = c()

for (i in 0:M) {
  bsample = sample(x, size=N, replace=TRUE) # select N samples *with replacement* 
  
  bmean = mean(bsample)
  bmeans = c(bmeans, bmean)
  
  bvar = (N-1)/N*var(bsample)
  bvars = c(bvars, bvar)
}

hist(bmeans, breaks = 20)
hist(bvars, breaks = 20)
