suits <- c("Hearts", "Diamond", "Club", "Cross");
numbers <- 1:13;

card_game <- expand.grid(suits, numbers);
card_game <- paste(card_game$Var1, card_game$Var2)

# if the order matters we are in the realm of permutations
# if the order does not matter we use combinations
M <- 100;
N <- 10000;

sample(card_game, 1)

x <- replicate(n = M, (function(){
  v <- replicate(n = N, expr = (function(){
    card <- sample(card_game, 1);
    # probability of any 7 should be 4 in 52 = 1/13 = 0.07692308
    no <- strsplit(x = card, split = " ", fixed = T)[[1]][2];
    return (no == "7");
  })());
  
  p_7 <- sum(v) / length(v);
  p_7
})())

hist(x, main = "Empirical probability of obtaining any 7 from a standard deck of card");
abline(v = 4/52, col = "blue", lty = 3)
