library(fpp2)
library(NHSRdatasets)
library(dplyr)


data("ae_attendances")

ae_attendances

min(ae_attendances$period)
max(ae_attendances$period)

dt<- 
  ae_attendances %>%
  filter(org_code=="RR1" & type=="1") %>%
  select(attendances) %>%
  ts(frequency=12, start = c(2016,4))


dt %>% autoplot()



ae_attendances %>%
  filter(org_code=="RRK") %>%
  arrange(period) %>%
  as.data.frame()
