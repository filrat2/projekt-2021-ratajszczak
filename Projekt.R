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

  THB = kursy$kurs_waluty[1]
  USD = kursy$kurs_waluty[2]
  AUD = kursy$kurs_waluty[3]
  HKD = kursy$kurs_waluty[4]
  CAD = kursy$kurs_waluty[5]
  NZD = kursy$kurs_waluty[6]
  SGD = kursy$kurs_waluty[7]
  EUR = kursy$kurs_waluty[8]
  HUF = kursy$kurs_waluty[9]
  CHF = kursy$kurs_waluty[10]
  GBP = kursy$kurs_waluty[11]
  UAH = kursy$kurs_waluty[12]
  JPY = kursy$kurs_waluty[13]
  CZK = kursy$kurs_waluty[14]
  DKK = kursy$kurs_waluty[15]
  ISK = kursy$kurs_waluty[16]
  NOK = kursy$kurs_waluty[17]
  SEK = kursy$kurs_waluty[18]
  HRK = kursy$kurs_waluty[19]
  RON = kursy$kurs_waluty[20]
  BGN = kursy$kurs_waluty[21]
  TRY = kursy$kurs_waluty[22]
  ILS = kursy$kurs_waluty[23]
  CLP = kursy$kurs_waluty[24]
  PHP = kursy$kurs_waluty[25]
  MXN = kursy$kurs_waluty[26]
  ZAR = kursy$kurs_waluty[27]
  BRL = kursy$kurs_waluty[28]
  MYR = kursy$kurs_waluty[29]
  RUB = kursy$kurs_waluty[30]
  IDR = kursy$kurs_waluty[31]
  INR = kursy$kurs_waluty[32]
  KRW = kursy$kurs_waluty[33]
  CNY = kursy$kurs_waluty[34]
  XDR = kursy$kurs_waluty[35]
  PLN = 1.00

zakup = function(x, y){
  x / y  
}
zakup(100, EUR) #jeśli zapłacisz x zł, dostaniesz wynik w wybranej walucie


sprzedaz = function(x, y){
  x * y  
}
sprzedaz(10, EUR) #jeśli sprzedasz x danej waluty, dostaniesz wynik w zł


porownanie = function(x, y){
  if (x > y){
    cat(paste("Kurs pierwszej wybranej waluty jest o", (x-y),"zł wyższy niż kurs drugiej wybranej waluty."))
  } else if (x < y){
    cat(paste("Kurs pierwszej wybranej waluty jest o", abs(x-y),"zł niższy niż kurs drugiej wybranej waluty."))
  } else {
    cat(paste("Kursy tych walut są równe. Prawdopodobnie do porównania wybrałeś dwie takie same waluty."))
  }
}  

porownanie(HUF, PLN)

porownanie(PLN, HUF)
    
porownanie(PLN, PLN)

#notatki do usunięcia
x = 3
kursy$symbol_waluty[x]
kursy$kurs_waluty[x]
k = 1000 / kursy$kurs_waluty[x]
k

kupno = function(x, y){
  
  if (x / y){
    cat(paste("Jeśli zapłacisz", x, "zł,","dostaniesz" , (x / y), 
              "wartości waluty."))
  }
}

kupno(130, EUR) 


sprzedaz = function(x, y){
  
  if (x * y){
    cat(paste("Jeśli sprzedasz liczbę",x ,"wartosci waluty,","dostaniesz",
              (x * y), "zł." ))
  } 
}
sprzedaz(100, EUR) 


