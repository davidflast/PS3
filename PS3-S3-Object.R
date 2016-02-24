# PS3
# David Flasterstein
# S3 object system

# Function to select door in "Lets Make a Deal"
# 
# This function allows the user to pick a door number
# which then outputs an object of class door with 
# their choice
# @param doorChoice: Choice of door from 1 to 3
# @return an numeric of class door with the users choice
# @author David Flasterstein
door_select <- function(doorChoice){
if(doorChoice > 3 | doorChoice < 1){
  return("That's not a door number")
}
class(doorChoice) <- "door"
return(doorChoice)
}

# Function to play "Let's Make a Deal"
#
# A user inputs their choice of door, and the function 
# picks which door to put the car behind. Function then informs
# user if they won a goat or a car
# @param door: an object between 1 and 3 of class door
# @return: which door the car was behind and whether the user wins the car
# @author David Flasterstein
PlayGame <- function(x){UseMethod("PlayGame")}
PlayGame.door <- function(door){
  car <- sample(1:3,1)
  print(paste("The car is behind door", car))
  if(door == car){
    print("Congratulations! You just won a car")
  } else {
    print("Sorry, you got the goat")
  }
}




