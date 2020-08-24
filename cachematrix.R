## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
x <- matrix(runif(100), ncol=10, nrow=10)

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function(){x}
  
  setinv <- function(matrix_inverse) inv <<- matrix_inverse
  
  getinv <- function() inv
  
  list(set=set, get=get, setinv=setinv, getinv=getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(is.null(x$getinv())){
    message("Calculating inverse...")
    x$setinv(solve(x$get()))
  }
  message("Matrix inverse is:")
  return(x$getinv())
}
