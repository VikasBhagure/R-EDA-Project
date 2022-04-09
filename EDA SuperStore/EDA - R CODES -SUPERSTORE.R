install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
install.packages("choroplethr")
library(choroplethr)
install.packages("choroplethrMaps")
library(choroplethrMaps)
install.packages("openintro")
library(openintro)
install.packages("tidyverse")
library(tidyverse)
install.packages("scales")
library(scales)
print(getwd())
d<-read.csv("C:/Users/VICKY/Downloads/superstore.csv")
print(d)
print(View(d))
print(head(d))
print(tail(d))
head(d,3)
print(summary(d))
print(str(d))
print(glimpse(d))
#data visualization
# Statewise Sales analysis
Statewise_sales=d %>% group_by(State) %>% summarise(Total_sales=sum(Sales)) %>% arrange((desc(Total_sales)))
View(Statewise_sales)

Statewise_sale=d %>% group_by(State) %>% summarise(Total=sum(Sales))
View(Statewise_sale)
#plotting Statewise 
Sales_A=ggplot(d,aes(x=State,y=Sales,fill=State))+geom_col()+ggtitle("statewise analysis")+coord_flip()+theme(legend.position = "None",axis.text.y =element_text(size=6))
print(Sales_A)




#Regionwise Sales analysis
Regionwise_sales=d %>% group_by(Region) %>% summarise(Total_sales=sum(Sales)) %>%
  arrange((desc(Total_sales)))
View(Regionwise_sales)

#Plotting Regionwise Sale analysis
Sales_C=ggplot(d,aes(x=Region,y=Sales,fill=Region))+geom_col()
#geographic plot of statewise sales analysis
gsplot=d %>% group_by(State) %>% summarise(Total_Sales=sum(Sales)) %>% arrange(desc(Total_Sales))
View(gsplot)
#converting into a geographic plot
colnames(gsplot)=c('region','value')
print(colnames(gsplot))
View(gsplot)
gsplot$region =tolower(gsplot$region)
Sales_D=state_choropleth(gsplot,title ='Geographic analysis of Sales',legend = 'sales in USD')
print(Sales_D)

