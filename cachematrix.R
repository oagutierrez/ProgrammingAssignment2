## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the purpose of the assigment is to write a pair of functions that cache the inverse of a matrix
## the function "makeCacheMatrix" generates a “matrix” object that can store its inverse


makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

get <- function() x
  setinversem <- function(inverse) m <<- inverse
  getinversem <- function() m
  list(set = set, 
       get = get, 
       setinversem = setinversem, 
       getinversem = getinversem)
   }    
## the following function 
        
     
        
        
## Write a short comment describing this function
## This function give the inverse matrix of the previously obtained matrix by the function makeCacheMatrix
##Then the cacheSolve function obtain the inverse matrix previously stored

 
cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
    m <- x$getinversem()
                if (!is.null(m)) {
                  message("getting cached matrix")
                  return(m)
                }
                matrix <- x$get()
                m <- solve(matrix, ...)
                x$setnversem(m)
                m   
        }
