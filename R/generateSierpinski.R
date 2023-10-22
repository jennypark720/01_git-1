
generateSierpinski <- function(rows) {
 data <- matrix(0, nrow=rows, ncol=2)
  
  vertices <- matrix(c(0.5, 0, 1, 0, sqrt(3)/2, sqrt(3)/2), ncol=2)
  
  current_point <- vertices[sample(1:3, 1), ]
  
  for (i in 1:rows) {
    vertex <- vertices[sample(1:3, 1), ]
    current_point <- (current_point + vertex) / 2
    data[i, ] <- current_point
  }
 
  return(as.data.frame(data))
  
  data[,2] <- 1 - data[,2]
}
