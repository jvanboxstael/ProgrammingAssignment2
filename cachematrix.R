## Put comments here that give an overall description of what your
## functions do

## Function storing a matrix and it's inverse and providing getters and setters.

makeCacheMatrix <- function(m = matrix()) {
  inverse <<- NULL
  setMatrix <- function(nMatrix){
    m <<- nMatrix
    inverse <<- NULL
  }
  setInverse <- function(sInverse){
    inverse <<- sInverse
  }
  getMatrix <- function() m
  getInverse <- function() inverse
  list(setMatrix = setMatrix, setInverse = setInverse, getMatrix = getMatrix, getInverse = getInverse)
}


## Function returning the inverse of a matrix. The function will return the cached inverse if it has been calculated before.
cacheSolve <- function(x, ...) {
  if(is.null(x$getInverse())){
    message("Cached inverse is empty, calculating iverse")
    inv <- solve((x$getMatrix()))
    x$setInverse(sInverse = inv)

  } else {
    message("Returning cached inverse")
    inv <- x$getInverse()
  }
  inv      
}
