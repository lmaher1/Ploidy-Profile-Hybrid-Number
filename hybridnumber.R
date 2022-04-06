hybridnumber = function(x) {
  #order the ploidy profile
  x <- sort(x, decreasing = TRUE)
  h <- 0
  #while the second element of our ploidy profile is not 1 i.e. while ploidy profile \vec{m} is not simple
  while (x[2] != 1){
    a <- x[1]-x[2] 
    print(x)
   #a=0 case doesn't generate a hybrid but we add a hybrid to the count in both other cases
     if (a != 0) {
    h <- h+1
     }
    #replace x_1 by a and reorder
    x[1] <- a
    x <- sort(x, decreasing = TRUE)
    #remove unwanted zeros
    x <- x[!x %in% 0]
  }
  print("The simple ploidy profile obtained by applying the simplification sequence to the input ploidy profile is")
  print(x)
  print("The number of hybrid vertices associated to the simplification sequence is")
  print(h)
}

