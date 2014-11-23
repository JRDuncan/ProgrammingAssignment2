## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL # creates variable m to hold matrix
    set <- function(y) { # assign the matrix entered to m
        x <<- y
        m <<- NULL
    }
	
	## set and get function for the inverse of the matrix
    get <- function() x
    setInverse <- function(inverse) m <<-inverse
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse() # calling getInverse function.  
    if ( ! is.null(m)) { # Returns inverse from cache if available
        print("getting cached data")
        return(m)
    }
    m <- solve(x$get()) # calling get inverse and storing inverse in variable m 
    x$setInverse(m) # caching inverse
    m		
}
