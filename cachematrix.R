## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix is function containing other functions
#in the function you can find short comments
makeCacheMatrix <- function(x = matrix()) {
  # empty value of reversed matrix
  m <- NULL
  
  Set <- function (y){
    x <<- y
    m <<- NULL
  }
  
  Get <- function() x
  #Save new created reversed matrix
  SetReverse <- function(reverse) {
    m <<- reverse
  }
  #return reversed matrix
  GetReverse <- function() {
    m
  }
  # create a list containing all the functions in the function MakeCacheMatrix
  list (Set= Set, Get= Get , SetReverse = SetReverse, GetReverse=GetReverse)
}


## Write a short comment describing this function
# CacheSolve is function checking if the reverse is already in cache or not, 
#if not i will calculate the reverse and return it, else it will return it from the Cache
#in the function you can find short comments
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$GetReverse()
  #Check if reversed matrix is in Cache, if so print message and return its value
  if(!is.null(m)){
    message("getting cached reverse matrix" )
    return(m)
  } else {
    # create reversed matrix
    m <- solve (x$Get())
    #Save reversed matrix
    x$SetReverse (m)
    return(m)
  } 
  
}

