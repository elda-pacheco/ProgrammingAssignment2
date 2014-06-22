## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function defines the following functions: set, get, setinverse, getinverse
# This function takes the matrix x and computes its inverse then creates a list
# to store it. This way the following function cacheSolve will be able to 
# check if the inverse has been previously computed and use the cached matrix
# hope 

makeMatrix <- function(x = matrix()){
  m <- matrix()
  set <- function(y)
  {
    x <<- y
    m <<- matrix()
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
# This function takes the matrix x, checks if the inverse already
# exists, if true gets the cached matrix, if false computes the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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