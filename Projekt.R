install.packages("readxl")

library(readxl)

kursy = read_excel("kursy.xlsx")

print(kursy, n=nrow(kursy))

