## Function will return the inverse of the matrix. If inverse has already been computated 
## earlier and stored (cache) then it will skip the computation and return the stored 
## value.
## If not it will compute the inverse and store the value in the cache using setinverse 
##function

   
## This function creates a special matrix which
## do the following:
## 1. set the value of the matrix
## 2.get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse 

makeCacheMatrix <- function(x = matrix()) {
		inv <- NULL
		set <- function(y)	{
		x<<- y
		inv <<- NULL
		}
		get <- function() x
		setinverse <- function(inverse)
		inv <<- inverse
		getinverse <- function() inv
		list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)	

## Return a matrix that is the inverse of 'x'

}
	data <- x$get()
	inv <- solve(data)
	x$setinverse(inv)
	inv
}	
	
