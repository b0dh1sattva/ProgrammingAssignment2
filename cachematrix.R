## Put comments here that give an overall description of what your
## functions do

## These functions take a invertible matrix as input and caches and returns the
## inverted matrix

## Write a short comment describing this function

## **makeCacheMatric** takes a square invertible matrix as an argument and
## outputs a list with the elements set, get, setinv, and getinv which is the
## input to cacheSolve

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(f){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) i <<- inverse
        getinv <- function() i
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

## **cachSolve** takes the list from makeCacheMatrix as an argument and outputs
## the inverse of the matrix inputted to makeCacheMatrix, it also solves the
## matrix and stores it in cache via the <<- operators in makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinv()
        if(!is.null(i)){
                return(i)
                message("getting cached data")
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)
        return(i)
}
