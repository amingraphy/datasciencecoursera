## There are two functions in this assignment
## the first function "makeCacheMatrix" function creates a special matrix
## that can cache its inverse

## I try to imitate the structure described in the assignment page
## with similar names for variables
# for the first function the only change is "solve" instead of "mean"

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
}
get <- function() x
setsolve <- function(solve) m <<- solve
getsolve <- function() m
list(set = set, get = get,
     setsolve = setsolve,
     getsolve = getsolve)
}

## the second function computes the inverse of the matrix returned by
# makeCacheMatrix. If the inverse has already been calculated, then the
# cachesolve retrieves the inverse from the cache.

## I am imitating the same structure again, changing "mean" to "solve"
cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting inversed matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
