library("robotstxt")

paths_allowed(
  path = "/en/real-estate/rent/city-basel",
  domain = "https://www.immoscout24.ch/"
)

get_robotstxt(domain = "https://www.immoscout24.ch/")

library("xml2")

real_estate <- read_html(
  "https://www.immoscout24.ch/en/real-estate/rent/city-basel"
)

library("rvest")
library("magrittr")
flats <- real_estate %>% 
  html_nodes(".chqpnT") %>%
  html_text()


write.csv(flats,"My_first site.csv")