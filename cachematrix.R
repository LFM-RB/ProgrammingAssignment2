## These functions provide a solution to the homework assignment.
## 

## A function that provides the first half of a solution to the homework assignment

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inv_X) inv <<- inv_X
  getInverse <- function() inv

  matrix(c(set, get, setInverse, getInverse),2,2) ## creates a "matrix" object
  
}


## Return a matrix that is the inverse of the ma

cacheSolve <- function(x, ...) {
  inv <- x[2,2][[1]]() ##takes in the "matrix" object 
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x[2,1][[1]]()
  inv <- solve(data)
  x[1,2][[1]](inv)
  inv
  
  }