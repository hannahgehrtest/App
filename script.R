# PGSF 2020
# preparing data set 


# loading packages
library("haven")
library("dplyr")


# data set
pgsf <- read_dta("PGSFV2.dta")


# relevant variables
pgsf_app <- pgsf %>% 
  select("county_id", "county_lab", "start",
         "end", "rperiod", "eingtotal", "pop") %>%
  # Keep only observations with eingtotal non-missing
  filter(!is.na(eingtotal)) %>%
  # Group observations by county_id and midyear.
  # county_lab is not necessary, but we need it later on.
  group_by(county_lab, county_id, midyear) %>%
  # Collapse observations:
  # If there are multiple obersvations for one county
  # for a specific year (e.g. 1st & 2nd quarter),
  # combine them into one observation
  summarise(eingtotal = sum(eingtotal, na.rm = TRUE),
            rperiod = sum(rperiod, na.rm = TRUE), 
            myear = max(myear, na.rm = TRUE),
            district_id = first(district_id),
            district_lab = first(district_lab),
            pop = first(pop)) %>%
  # Create variable eingdens (Eingaben density).
  # Eingaben per day and 1000 people
  mutate(eingdens = (eingtotal / rperiod) / (pop/1000 ) ) %>%
  ungroup()


# eingtotal entire year (leap year? NA?) 
EingTotal_N <- pgsf_app$eingtotal/pgsf_app$rperiod * 365
print(EingTotal_N)


# eingtotal + pop
EingPop <- EingTotal_N/pgsf_app$pop
print(EingPop)

