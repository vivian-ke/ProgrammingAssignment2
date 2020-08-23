## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
+     set<-function(y){
+         x<<-y 
+         m<<-NULL
+     }
+     get<-function() x
+     setM<-function(solve) m<<-solve
+     getM<-function() m
+     list(set=set,get=get,setM=setM,getM=getM)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m<-x$getM()
+     if(!is.null(m)){
+         message("TO cached data")
+         return(m)
+     }
+     data<-x$get()
+     m<-slove(data,...)
+     x$setM(m)
+     m
}
