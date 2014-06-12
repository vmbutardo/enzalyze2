##' read raw calibration data, create calib object
##' 
read_calib_raw <- function(fn, conc.var="conc", units=NULL, ...) {
  
  calib <- read.csv(fn, ...)
  
  calib_obj <- as_calib_obj(calib_obj, units)
}