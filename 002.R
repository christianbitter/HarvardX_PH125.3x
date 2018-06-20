beads <- c("blue", "blue", "blue", "red", "red");

x0 <- sample(beads, 5, replace = T)

# if events are not independent we need conditional probability
# events are independent if the outcome of the first does not inform the outcome of the second
# p(A | B) = p(A, B) / p(B)

x1 <- sample(beads, 5, replace = F)

print(x0) # it might happen that we have more reds than are in the beads ... 
print(x1)


#One ball will be drawn at random from a box containing: 3 cyan balls, 5 magenta balls, and 7 yellow balls. 
box <- c(rep("cyan", 3), rep("magenta", 5), rep("yellow", 7))
sample(box, 1)

# sampling without replacement

