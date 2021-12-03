# unsupervised learning (clustering) for transcripts of monocytes
# dataset: features of monocytes mRNA
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stringr)
library(readr)

# Reading data
RED_SPL <- read_csv("~/GoogleDrive/UnB/projeto_pedro/RED_SPL.csv")
RED_SPL <- RED_SPL %>%
  separate(subs, c("subs1", "subs2"), " ")
View(RED_SPL)
