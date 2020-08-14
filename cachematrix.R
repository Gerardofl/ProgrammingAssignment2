## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
f <- NULL
  set <- function(y) {
    x <<- y
    f <<- NULL
  }
  get <- function() x
  set_inver <- function(inver) f <<- inver
  get_inver <- function() f
  list(set = set,
       get = get,
       set_inver = set_inver,
       get_inver = get_inver)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
f <- x$get_inver()
  if (!is.null(f)) {
    mensaje("data del caché")
    return(f)
  }
  dat <- x$get()
  f <- solve(dat, ...)
  x$set_inver(f)
  f
}
