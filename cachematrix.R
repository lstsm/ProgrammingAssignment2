## These functions provide the means to cache the inverse of a matrix
## so that it does not need to be recomputed everytime it is accessed

## This function creates a list with four functions that holds a matrix
## and caches the inverse after it is first calculated

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- ymake
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(inverse) m <<- inverse
  getSolve <- function() m
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## This function returns the inverse of the matrix in x
## x should be a list from the makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  
  m <- solve(data)
  x$setSolve(m)
  m
  
  
  }

