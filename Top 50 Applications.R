#web scrapping using r and SELECTOR GADGET
#importing library
library(rvest)
library(dplyr)
#scrapping webstite
link="https://theninehertz.com/blog/top-apps/trending-apps"
#html element from website
web=read_html(link)
#segregating name
appname=web%>%html_nodes("td:nth-child(1)")%>%html_text()
#view the name of the movie
View(appname)
#segregating years
Compatibility=web%>%html_nodes("td:nth-child(2)")%>%html_text()
#view year
View(Compatibility)
#segregating rating
pricing=web%>%html_nodes("td~ td+ td span")%>%html_text()
#view ratings
View(pricing)
#creating data frame
Applications=data.frame(appname,Compatibility,pricing)
#view data frame
View(Applications)
write.csv(Applications,'top50Applications.csv')