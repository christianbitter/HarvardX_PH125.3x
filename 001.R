# replicating a 1 element sample from beads
rm(list = ls());

N <- 1e3;
n     <- 10;
p_red <- .4;
p_blue <- 1 - p_red;

beads <- c(rep("red", n * p_red), rep("blue", n * p_blue));
v <- replicate(N, sample(x = beads, size = 1))
table(v)
