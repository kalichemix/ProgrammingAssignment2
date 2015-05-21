# The following function creates a list of functions that allow to set the matrix,
# get the matrix, set the inverse matrix and get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
     
     inv <- NULL
     
     set <- function(y) {
          x <<- y
          inv <<- NULL
     }
     get <- function() x
     setinv <- function(inversion) inv <<- inversion
     getinv <- function() inv
     
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}