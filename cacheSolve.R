# This function computes the inverse of the matrix returned by makeCacheMatrix above.
# If the inverse has already been calculated (and the matrix has not changed), then the 
# cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
     
     inv <- x$getinv()
     if(!is.null(inv)) {
         message("Getting cached matrix:")
         return(inv)
     }
     
     data <- x$get()
     if(nrow(data) != ncol(data)){
          stop("The number of rows and columns need to be the same to perform the inverse operation!")
     }
     
     inv <- solve(data)
     x$setinv(inv)
     inv

}