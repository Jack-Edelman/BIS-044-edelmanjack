library(data.table)
library(tidyverse)
library(stringr)

JE <- read.csv("USvideos.csv")
attach(JE)

JE$trending_date <- as.Date(JE$trending_date, format="%y.%d.%m")

JE <- JE %>% separate(col=publish_time,into=c("PDate", "PTime"), "T",extra="merge")
JE$PDate <- as.Date(JE$PDate)

JE$PTime <- substr(JE$PTime,1,nchar(JE$PTime)-5)
JE$PTime <- as.POSIXct(paste(JE$PDate, JE$PTime), format="%Y-%m-%d %H:%M:%S")

JE$title <- str_to_title(title)

View(JE)

