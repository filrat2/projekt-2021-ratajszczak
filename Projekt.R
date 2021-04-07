install.packages("readxl")

library(readxl)

kursy_plik = read_excel("kursy.xlsx")

print(kursy_plik, n=nrow(kursy_plik))

kursy = data.frame(kursy_plik)
kursy

colnames(kursy)
names(kursy)[names(kursy) == "Symbol.waluty"] = "symbol_waluty"
names(kursy)[names(kursy) == "Kurs.waluty"] = "kurs_waluty"
names(kursy)[names(kursy) == "Nazwa.waluty"] = "nazwa_waluty"
colnames(kursy)
kursy

