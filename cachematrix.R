## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# inizializing the functions used in cacheSolve
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
#if already solved, the function returns the cached matrix
#otherwise solves and returns the solved matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached matrix")
    return(s)
  }
  mat <- x$get()
  s <- solve(mat, ...)
  x$setsolve(s)
  s
}
