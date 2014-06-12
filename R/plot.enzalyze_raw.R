

plot.enzalyze_raw <- function(e_obj, ...) {
  
  d <- e_obj$data
  time.name=e_obj$time.name
  fl.name=e_obj$fl.name
  browser()
  
  p <- ggplot(d, aes_string(x=time.name, y=fl.name)) +
    geom_point() +
    geom_smooth(method="lm") 
  
  
  print(p)
  invisible(p)
    
}