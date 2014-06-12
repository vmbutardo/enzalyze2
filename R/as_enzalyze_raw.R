as_enzalyze_raw <- function(data=NULL, fl.name="fl", time.name="time", is.tidy=NA, is.raw=TRUE) {
  
  ### Error checking
  # Check whether d is data frame
  # Check whether fl name is character; and is in the data frame
  # Check whether time.name is character, and is in the data frame
  # Can I easily check whether d is tidy? Not sure
  
  browser()
  # Check wether d has a data frame named Rtime, which is in time format
  if (!("Rdata" %in% names(data))) {
    stop("The data frame should have a column called Rtime")
  }
  if (!class(data$Rdata) == "POSIXct") {
    stop("The class of the Rdata column is not POSIXct")
  }
  
  
  # Check whether it is raw
  obj <- list(data=data, 
              fl.name=fl.name, 
              time.name=time.name, 
              is.tidy=is.tidy, 
              is.raw=is.raw)
  class(obj) <- "enzalyze_raw"
  invisible(obj)
}