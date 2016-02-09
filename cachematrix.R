## The functions below will be used to create a special matrix and cache its inverse.

## makeCachematrix is a function that creates the special "matrix"
## To start: we created a list that contains a function to:
## set the value of the value of the matrix (set_matrix)
## get the value of the value of the matrix (get_matrix)
## set the value of the inverse (set_inverse)
## get the value of the inverse (get_inverse)

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL 
	set_matrix <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get_matrix <- function() x
	set_inverse <- function(solve)  inverse <<- solve
	get_inverse <- function() inverse
	list(set_matrix = set_matrix, get_matrix = get_matrix, 
		set_inverse = set_inverse, 
		get_inverse = get_inverse)
}


## We are solving for inverse of the special "matrix" created above

cacheSolve <- function(x, ...) {		 		 ## Returning the matrix 
		inverse <- x$get_inverse()				 ## Getting the inverse
		x <<- y
	if(!is.null(inverse)) {						 ## Checking for the inverse's presence
		message("getting cached data") 			 ## Displaying the message
		return(inverse)
	}
	data <- x$get_matrix()
	inverse <- solve(data, ...) 	## Computing the inverse of x using solve() 
	x$set_inverse(inverse)  		## Return a matrix that is the inverse of 'x
	inverse 						## Returning the inverse
}
