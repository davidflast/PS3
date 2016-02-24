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



