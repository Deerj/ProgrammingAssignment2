##  inverse the invertible matrix by cache

## The functions in this module provide a convenient interface
## to access and cache the inverse of a matrix


## makeCacheMatrix -- creates a matrix object and 
## its cache
makeCacheMatrix <- function(x = matrix()) {
        cacheinverse <- NULL
        set <- function(newx){
                x<<- newx
                cacheinvers<<- NULL
        }
        get <- function() x
        setcacheinverse <- function(inverse) cacheinverse <<- inverse
        getcacheinverse <- function() cacheinverse
        
        list(set = set, get = get, setcaheinverse = setcaheinvese, getcacheinverse = getcaheinverse)
        
        
}


## cacheSolve -- returns the inverse  matrix stored in 
## the previous function. And calls to cacheSolve() for
## the  'makeCacheMatrix' result will return a cached inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cache <- x$getcacheinverse()
        if(!is.null(cache)){
                message("getting cached data")
                retrurn(cache)
        }
        m <- x$get()
        cahe <- solve(m)
        x$setcacheinverse(cache)
        cache
}
