## This set of functions can be used to store a matrix and it's inverse.
##If an inverse has already been calculated it will pull the stored result rather than recalculate it.

## Gets and Sets a Matrix and its inverse

makeCacheMatrix <- function(x = numeric()) { 
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  
  getinv <- function() i
  setinv <- function(r) i <<- r
  
  list (set=set, get=get, getinv=getinv, setinv=setinv)
} 

## calculates the inverse of matrix x. Will use a cashed solution if available 

cacheSolve <- function (x, ...) { 
  m <- x$getinv()
  if (!is.null(m)) {
    message ("Using cached data")
    return (m)
  }
  else{
      i <- solve(x$get())
    x$setinv(i)
    i
    }
  
  ## Return a matrix that is the inverse of 'x'
  
} 
