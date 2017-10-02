## Programming Assignment 2 - R Programming
## Data Science Specialization Track
## WEEK 3


makeCacheMatrix <- function(x = matrix()) {

}

## The following function returns the inverse of the matrix.
## Checks if the inverse has already been computed and cached.
## If so.
### It gets the result and skips the computation.
## If not.
### It computes the inverse and cache the value using SetInverse function.
## This function assumes that the matrix is always invertible.
## This function receives an square matrix as parameter.
cacheSolve <- function(x, ...) {
    inv <- x$GetInverse()
    
    if(!is.null(inv)) {
        message("Getting cached data.")
        return(inv)
    }
    data <- x$Get()
    inv <- solve(data)
    x$SetInverse(inv)
    inv
}