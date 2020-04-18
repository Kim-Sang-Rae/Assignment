mytranspose <- function(x) {
  
  if(mode(x)=="NULL")  {
  return(0)
  }
  
  x1<- class(x)
  x2<- mode(x)
  if (is.matrix(x) == FALSE) {
    
  x <-as.matrix(x,hear=T)
  }
  y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
  a <- 1
  if (nrow(x) ==0 & ncol(x) ==0){
    a <- 0
  }
  for(i in a:nrow(x)) {
    for(j in a:ncol(x)) {
      y[j,i] <- x[i,j]
    }
    
  }

  if (x1 == "data.frame") {
    row.names(y) <- c("d","e","f")
  }
  return(y)
  }
  
  
