# PS3
# David Flasterstein

# 1. S3 object system
door_select <- function(doorChoice){
if(doorChoice > 3 | doorChoice < 1){
  return("That's not a door number")
}
class(doorChoice) <- "door"
return(doorChoice)
}

PlayGame <- function(x){UseMethod("PlayGame")}
PlayGame.door <- function(x){
  car <- sample(1:3,1)
  print(paste("The car is behind door", car))
  if(x == car){
    print("Congratulations! You just won a car")
  } else {
    print("Sorry, you got the goat")
  }
}




