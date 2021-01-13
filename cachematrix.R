#makeCachematrix creates a special "matrix object that will cache the inverse of the matrix
#cacheSolve computes the inverse of the matrix. Assumption: all matrices are invertible.
#Inverting the matrix is done using the solve() function in R

#makeCacheMatrix will create a special "matrix" and will consist of 4 functions:
#1 set: set the value of the matrix
#2 get: get the value of the matrix
#3 setInverse: set the value of the inverse of the matrix
#4 getInverswe: get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  #initialize m to NULL
  m <- NULL
  # using the <<- assignment operator, create the set function
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
    
}


#This function returns the inverse of the "matrix" from returned by the 
#makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  #the solve() function in R returns the inverse of a matrix
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
