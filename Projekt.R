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


EUR = kursy$kurs_waluty[8]

zakup = function(x, y){
  x / y  
}
zakup(100, EUR) #jeśli zapłacisz x zł, dostaniesz wynik w wybranej walucie


sprzedaz = function(x, y){
  x * y  
}
sprzedaz(100, EUR) #jeśli sprzedasz x danej waluty, dostaniesz wynik w zł




x = 3
kursy$symbol_waluty[x]
kursy$kurs_waluty[x]
k = 1000 / kursy$kurs_waluty[x]
k

