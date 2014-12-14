## Caching the inverse of a matrix

## "Funcion" (list) to assign, to obtain the matrix and its inverse


makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL

    get <- function() x
    setinv <- function(invMat) inv <<- invMat
    getinv <- function() inv
    
    list(get = get,
         setinv = setinv,
         getinv = getinv)
}


## Actually obtaining the inverse of a matrix
## If already cached, returns the value from the cache, if not, calculates the inverse

cacheSolve <- function(x) {
    ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
        } 
        else {
          message("Calculating the inverse...")
        
        
          data <- x$get()
          inv <- solve(data)
          x$setinv(inv)
          inv
        }
}


