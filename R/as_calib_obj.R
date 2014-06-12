##' Create a calibration object
##' 
##' @description Ultimately this should be able to handle multiple fluorophores. Right now it will ignore long-format extra fluorophores, and will choke on wide format extra fluorophores
##' 
as_calib_obj <- function(df, conc.var="conc", response.var="fl", units=NULL, compound=NULL) {
  
  # Check whether units are acceptable
  if(is.null(units)) {
    warning("The units on this calibration are unknown")
  }
  if(is.null(compound)) {
    warning("The compound you are calibrating is unknown")
  }
  
  # Calculate slope
  calib_lm <- lm_stats(df, conc.var, response.var)
  
  obj <- list(
    calib.data=df,
    compound=compound,
    units=units,
    conc.var=conc.var,
    response.var=response.var)
  class(obj) <- "calib_obj"
  
  obj
  
}