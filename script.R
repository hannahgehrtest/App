# PGSF 2020
# preparing data set 
 
?sliderInput

# loading packages
library("haven")
library("dplyr")


# data set
pgsf <- read_dta("PGSFV2.dta")


# relevant variables
pgsf_app <- pgsf %>% 
  select("county_id", "county_lab", "start",
         "end", "rperiod", "eingtotal", "pop") 


# eingtotal entire year (leap year? NA?) 
EingTotal_N <- pgsf_app$eingtotal/pgsf_app$rperiod * 365
print(EingTotal_N)


# eingtotal + pop
EingPop <- EingTotal_N/pgsf_app$pop
print(EingPop)

