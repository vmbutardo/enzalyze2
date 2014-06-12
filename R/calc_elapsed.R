##' This is only half-written!

calc_elapsed <- function(e_obj, time.name="time", date.name=NA) {
  
  # Check whether argument is an enzalyze object
  if(class(e_obj) != "enzalyze_raw"){
    d <- e_obj$data
  } else if(class(e_obj) == "data.frame"){
    warning("Note that the object is a data frame. I haven't really decided what to do about that.")
  }
  
  # If no column of date data is specified, use a fake date
  if(is.na(date.name)){
    date <- "2014-02-14"
  }
  #times <- paste
  #time <- object_
  
}