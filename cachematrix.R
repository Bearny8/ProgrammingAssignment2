## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates Matrix that sets anf gets value for the matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <-function(y){
    x<<-y
    m<<-NULL
  }
  get <- function()x
  setInverse <- function(Inverse) m<<-Inverse
  getInverse<-function() m
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}





## Write a short comment describing this function
## This function calculates Inverese Matrix but only if nothing is stores in cashe. If value 
## of the Inverse Matric already exists, itdoes not solve it.

cacheSolve <- function(x, ...) {
  
  Inv<- x$getInverse()
  if (!is.null(Inv)) {
    message("getting cached data")
    return(Inv)
  }
  data <- x$get()
  Inv<- Inv(data, ...)
  x$setInv(Inv)
  Inv
}



## Return a matrix that is the inverse of 'x'
