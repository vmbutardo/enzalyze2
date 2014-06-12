
# Generate fake data
elapsed <- rep(1:4, 4) 
fl <- elapsed + rnorm(length(elapsed), mean=0, sd=0.3)
conc <- c(rep(1, 8), rep(2, 8))
site <- gl(2, 4, length=length(elapsed), labels=letters[1:2])
raw_df <- data.frame(elapsed, fl, conc, site)

# Plot the raw fake data
ggplot(raw_df, aes(x=elapsed, y=fl)) + 
  geom_point() + 
  geom_smooth(method="lm", se=FALSE) + 
  facet_wrap(conc~site)

# Make the raw fake data into a enz_raw object
ex_class <- enzalyze_raw(data=raw_df)


print.enzalyze_raw(ex_class)

# Define a plot method

###### 
e_raw <- read_tidy("~/Dropbox/Drew/Priming effect/data/2014_04_23_GC/2014_04_23_GC_enz.csv")
plot(e_raw)

