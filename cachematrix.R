## Put comments here that give an overall description of what your
## functions do
## The functions below cache the inverse of a matrix to be accessed at a later point
## Write a short comment describing this function
## Create a matrix to be inverted
makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y){
          x<<- y
          m<<- NULL
     }
     get <- function() x
     setinv <- function(inv) m <- inv
     getinv <- function() m
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}


## Write a short comment describing this function
## Caches the inverse of the matrix x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m <- x$getinv()
     if(is.null(m)){
          message('getting cahced data')
          return(m)
     }
     data <- x$get()
     m <- solve(data,...)
     x$setinv(m)
     m
}
