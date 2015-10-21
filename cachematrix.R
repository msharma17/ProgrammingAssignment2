<<<<<<< HEAD
## Matrix inversion are costly and time consuming computation.
## Below two functions are used to cache the inverse of an invertible matrix.


## This function creates a special "matrix" object that can cache its inverse.
##This function-
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  # Define function to get the value of the matrix  
  get <- function() x
  # Define function to set the inverse. This is only used when
  # there is no cached inverse  
  
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  # Return a list with the above four functions  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the special "matrix" returned
##by makeCacheMatrix above. If the inverse has already been calculated 
##and the matrix has not changed, then cacheSolve does not compute the inverse 
##and retrieves the value of the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()  # This fetches the cached value for the inverse
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  # If the cache is empty then We calculate the inverse.
  
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
