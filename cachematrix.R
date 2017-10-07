## Put comments here that give an overall description of what your
## functions do

#This function creates a special "matrix"(under the assumption that 
#is always invertible), and we get the inverse metrix of it.

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y){
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) inverse <- inv
        getinverse <- function() inverse
        list(set = set, get = get,
             setniverse = setinverse,
             getinverse = getinverse)
}

#This function computes the inverse of the special "matrix" returned by makeCacheMatrix
#function. If the inverse has already been calculated
#(and the matrix has not changed),
#then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if (!is.NULL(inverse)){
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        x$setinverse(ineverse)
        inverse
}
