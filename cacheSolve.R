cacheMatrix <- function(x, ...) {
  m <- x$getinverse()
  
  if(length(m)!=1) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
