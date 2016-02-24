#PS3
# David Flasterstein
# S4 Object System
rm(list=ls())
library(methods)

setClass(Class = "door", 
         representation = representation(doorNum = "numeric")
         )
# checks doorNum is a number between 1 and 3
setValidity("door", function(object){
      if(object@doorNum > 3 | object@doorNum < 1){
        return("@door needs to be within 1 and 3")
      }
    }
  )


new("door", doorNum =4)



