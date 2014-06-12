##' Plots a calibration object
##' 
##' @param calib_obj A calibration object
##' @param plot.trendline 

plot.calib_obj <- function(calib_obj, plot.trendline=TRUE) {
  d <- calib_obj$calib.data
  xvar=calib_obj$conc.var
  yvar=calib_obj$response.var
  compound=calib_obj$compound
  units=calib_obj$units
  
  p <- ggplot(d, aes_string(x=xvar, y=yvar)) + 
    geom_point() +
    xlab(paste("[", compound, "], ", units, sep=""))
  
  # Add a trendline
  if(plot.trendline==TRUE) {
    p <- p + geom_smooth(method="lm", se=FALSE)
  }
  
  # Print and return the plot
  print(p)
  p
}