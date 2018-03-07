## Gets and Sets that stores a Matrix and it's inverse

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

## calculates the inverse of matrix x.  Will use a cashed solution if available 
cacheSolve <- function(x, ...) { 
  m <- x$getinv
  print (m)   
  if (!is.null(m)) {
    message ("Using cashed data")
    return (m)
  }
  else{
    gotx <- x$get
    ##print(gotx)
    i <- solve(gotx)
    x$setinv(i)
  }
  i
  ## Return a matrix that is the inverse of 'x'
  
} 
