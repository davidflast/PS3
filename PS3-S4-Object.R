# PS3
# David Flasterstein
# S4 Object System

# creates S4 object of class "door", which allows the user to pick
# a door numbered one, two, or three
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

# Creates a generic "PlayGame"
setGeneric("PlayGame",
           function(object = "door"){
            standardGeneric("PlayGame") 
           })
# Function to check if your door was the car
#
# This function checks to see if the users choice of door was
# the door with the car, or with the goat
# @param door: an object of class door
# @return method prints whether you won the car, 
#         or the goat with the door number for the car
# @author David Flasterstein
setMethod("PlayGame", "door",
          function(object){
            car <- sample(1:3, 1)
            if(object@doorNum == car){
              print("You won a Car!")
            } else {
              print(paste("Sorry, you won a goat, the car was actually in door", as.character(car)))
            }
          }
          )

choice = new("door", doorNum = 3)
PlayGame(choice)





