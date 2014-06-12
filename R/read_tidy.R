##' Reads a tidy csv file
##' 
##' @description Reads a tidy .csv file.  Really just a wrapper for read.csv combined with as_enzalyze_raw
##' @details currently the arguments other than fn are ignored. At some point I will implement them such that read.args are passed to read.csv and as.enzalyze.raw.args are passed to as_enzalyze_raw
##' @return Returns an object of class enzalyze_raw

read_tidy <- function(fn, read.args=NA, as.enzalyze.raw.args=NA) {
  
  d <- read.csv(fn)
  as_enzalyze_raw(d)
}