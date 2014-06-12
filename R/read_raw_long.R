##' Read raw data from .csv from long text file (default .csv)
##' 
##' 
read_raw_long <- function(fn, ...) {
  d <- read.csv(fn, ...)
  er <- as_enzalyze_raw(d)
}