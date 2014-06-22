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