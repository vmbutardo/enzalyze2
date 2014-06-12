head.enzalyze_raw <- function(enz_obj) {
  d <- enz_obj$data
  print(head(d))
  invisible(enz_obj)
}