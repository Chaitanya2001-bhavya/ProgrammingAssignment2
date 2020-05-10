## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(x = matrix()) {
makeCacheMatrix <- function(matrix = matrix()) {
	#invMatrix - inverse matrix value
	invMatrix <- NULL #default value - NULL

	#setMatrix function: matrix and reset invMatrix
	setMatrix <- function(y){
		matrix <<- y
		invMatrix <<- NULL
	}
	#getMatrix function: get matrix
	getMatrix <- function() matrix

	#setInvMatrix function: set inverse matrix
	setInvMatrix <- function(inverseMatrix) invMatrix <<- inverseMatrix

	#getInvMatrix function: get inverse matrix
	getInvMatrix <- function() invMatrix

	list(setMatrix = setMatrix, getMatrix=getMatrix,
		 setInvMatrix = setInvMatrix,
		 getInvMatrix = getInvMatrix)
}


## Write a short comment describing this function
## Function: cacheSolve
## Description: This function computes the inverse of the
## 				special "matrix" returned by makeCacheMatrix

cacheSolve <- function(matrix, ...) {
		#get invMatrix
        invMatrix <- matrix$getInvMatrix()

        #check if it is not null
        if (!is.null(invMatrix)){
        	message("getting cached data")
        	return (invMatrix)
        }

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #if it is null, calculate the inverse
        data <- matrix$getMatrix()
        inv <- solve(data, ...)
        matrix$setInvMatrix(inv) #save it
        inv
