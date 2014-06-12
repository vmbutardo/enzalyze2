# Define a print method
print.enzalyze_raw <- function(enz_obj) {
  d <- enz_obj$data
  print(d)
  invisible(enz_obj)
}