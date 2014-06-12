##' Prints calib.obj
##' 
print.calib_obj <- function(calib_obj){
  
  print("This is a calibration object.")
  print(calib_obj$calib_lm)
  
  print(calib_obj$calib.data)
}