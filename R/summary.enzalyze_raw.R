##' Prints summary of enzalyze objects
##' 
##' @description Right now this just prints str(enz_obj). Ultimately I would like it to print something more useful.

summary.enzalyze_raw <- function(enz_obj) {
  print(str(enz_obj))
  invisible(enz_obj) 
}