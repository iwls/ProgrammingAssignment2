## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
  
  list (Set= Set, Get= Get , SetReverse = SetReverse, GetReverse=GetReverse)
}


## Write a short comment describing this function

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

