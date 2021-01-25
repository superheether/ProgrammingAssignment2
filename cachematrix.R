## makeCacheMatrix = create the matrix named matrix1 that can cache its inverse
## matrix1 = list matrix, 1:4, 2 columns, 2 rows

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)

}


## cacheSolve = will give the inverse of matrix1

cacheSolve <- function(x, ...) {inv <- x$getinverse()
if(!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
matrix_to_invert <- x$get()
inv <- solve(matrix_to_invert, ...)
x$setinverse(inv)
inv
}
