## Programming Assignment 2 - R Programming
## Data Science Specialization Track
## WEEK 3


## makeCacheMatrix creates a list containing four functions:
## 1. Set = Set the value of the matrix
## 2. Get = Get the value of the matrix
## 3. SetInverse = Set the value of inverse of the matrix
## 4. GetInverse = Get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    ##All those functions works like methods in other languages.
    
    ##SET
    Set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    ##GET
    Get <- function(){
        x
    }
    
    ##SET INVERSE
    SetInverse <- function(inverse){
        inv <<- inverse
    }
    
    ##GET INVERSE
    GetInverse <- function(){
        inv
    }
    
    list(
        Set=Set,
        Get=Get,
        SetInverse=SetInverse,
        GetInverse=GetInverse
        )
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