## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(z){
    x <<- z
    a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a
  list(set = set,
       get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  f <- x$getInverse()
  if(!is.null(f)){
    message("Obteniendo datos del cache")
        return(f)
  }
  mat <- x$get()
  f <- solve(mat,...)
  x$setInverse(f)
  f
}

