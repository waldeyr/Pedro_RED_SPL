# unsupervised learning (clustering) for transcripts of monocytes
# dataset: features of monocytes mRNA
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stringr)
library(readr)

# Reading data
RED_SPL <- read_csv("https://raw.githubusercontent.com/waldeyr/Pedro_RED_SPL/main/RED_SPL.csv")

RED_SPL <- RED_SPL %>%
  separate(col = subs, into = c("subs1", "subs2"), sep = " ")
names(RED_SPL) <- c("Serial", "Region", "Mutation_Position", "Freq_Edition_0", "Freq_Edition_1", "Nucleotide_Substitution_1", "Nucleotide_Substitution_2", "P_Value", "P_Value_Adjusted", "Sym", "Ensembl_Id", "Type", "A3SS", "A5SS", "MXE", "RI", "SE", "LogFcExp", "Delta_Free_Energy", "Genetic_Var", "Most_Severe_Cons", "All_Cons", "AA_Change", "Codons_Change")
# Overview of the dataset
View(RED_SPL)
write.table(RED_SPL, file = "/home/waldeyr/GoogleDrive/UnB/projeto_pedro/Pedro_RED_SPL/RED_SPL.tsv", sep = "\t", row.names = TRUE)
