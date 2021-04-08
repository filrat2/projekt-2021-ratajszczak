install.packages("readxl")

library(readxl)

  #stworzenie ramki danych z kursami walut

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

  #przypisanie kursów do międzynarodowych symboli walut

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

  #Funkcja kupno
  
kupno = function(x, y){
  cat(paste(x, "zł możesz wymienić na", (x / y),
            print(substitute(y)),"."))
}
  
kupno(130, EUR) 
  
  #Funkcja sprzedaz
  
sprzedaz = function(x, y){
  cat(paste("Jeśli sprzedasz",x , print(substitute(y)) , "otrzymasz",
            (x * y), "zł."))
  } 
  
sprzedaz(130, EUR) 
  
  #Funkcja jaka_to_waluta
  
jaka_to_waluta = function(kraj){
  kraj
  }
  
kraj = c(Tajlandia, StanyZjednoczone, Australia, Hongkong, Kanada, NowaZelandia,
         Singapur, EUR, Węgry, Szwajcaria, WielkaBrytania, Ukraina, Japonia,
         Czechy, Dania, Islandia, Norwegia, Szwecja, Chorwacja, Rumunia,
         Bułgaria, Turcja, Izrael, Chile, Filipiny, Meksyk, RPA, Brazylia,
         Malezja, Rosja, Indonezja, Indie, KoreaPołudniowa, Chiny, XDR)
  
Tajlandia = c("bat tajski", "THB")  
StanyZjednoczone = c("dolar amerykański", "USD")
Australia = c("dolar australijski", "AUD")
Hongkong = c("dolar Hongkongu", "HKD")
Kanada = c("dolar kanadyjski", "CAD")
NowaZelandia = c("dolar nowozelandzki", "NZD")
Singapur = c("dolar singapurski", "SGD")
Niemcy = c("euro", "EUR")
Hiszpania = c("euro", "EUR")
Slowacja = c("euro", "EUR")
Wlochy = c("euro", "EUR")
Francja = c("euro", "EUR")
Finlandia = c("euro", "EUR")
Czarnogora = c("euro", "EUR")
Austria = c("euro", "EUR")
Portugalia = c("euro", "EUR")
Malta = c("euro", "EUR")
Litwa = c("euro", "EUR")
Estonia = c("euro", "EUR")
Andora = c("euro", "EUR")
Lotwa = c("euro", "EUR")
Belgia = c("euro", "EUR")
Cypr = c("euro", "EUR")
Slowenia = c("euro", "EUR")
Luksemburg = c("euro", "EUR")
Holandia = c("euro", "EUR")
Irlandia = c("euro", "EUR")
Monako = c("euro", "EUR")
SanMarino = c("euro", "EUR")
Watykan = c("euro", "EUR")
Grecja = c("euro", "EUR")
Wegry = c("forint", "HUF")  
Szwajcaria = c("frank szwajcarski", "CHF")
WielkaBrytania = c("funt szterling", "GBP")
Ukraina = c("hrywna (Ukraina)", "UAH")
Japonia = c("jen", "JPY")
Czechy = c("korona czeska","CZK")
Dania = c("korona duńska", "DKK")
Islandia = c("korona islandzka", "ISK")
Norwegia = c("korona norweska", "NOK")
Szwecja = c("korona szwedzka", "SEK")
Chorwacja =  c("kuna chorwacka", "HRK")
Rumunia = c("lej rumuński", "RON")
Bulgaria = c("lew (Bułgaria)", "BGN")
Turcja = c("lira turecka", "TRY")
Izrael = c("nowy izraelski szekel", "ILS")
Chile = c("peso chilijskie", "CLP")
Filipiny = c("peso filipińskie", "PHP")
Meksyk = c("peso meksykańskie", "MXN")
RPA = c("rand", "ZAR")
Brazylia = c("real (Brazylia)", "BRL")
Malezja = c("ringgit (Malezja)", "MYR")
Rosja = c("rubel rosyjski", "RUB")
Indonezja = c("rupia indonezyjska", "IDR")
Indie = c("rupia indyjska", "INR")
KoreaPoludniowa = c("won południowokoreański", "KRW")
Chiny = c("yuan renminb", "CNY")
XDR = c("MFW", "SDR")
Polska = c("polski złoty", "PLN")

jaka_to_waluta(Rumunia)

jaka_to_waluta(Polska)

  #Funkcja porownanie
  
porownanie = function(x, y){
  if (x > y){
    cat(paste("Kurs pierwszej wybranej waluty jest o", (x-y),"zł wyższy niż kurs drugiej wybranej waluty."))
  } else if (x < y){
    cat(paste("Kurs pierwszej wybranej waluty jest o", abs(x-y),"zł niższy niż kurs drugiej wybranej waluty."))
  } else {
    cat(paste("Kursy tych walut są równe. Prawdopodobnie do porównania wybrałeś dwie takie same waluty."))
  }
}  

porownanie(USD, USD) 

porownanie(PLN, HUF)
    
porownanie(PLN, PLN)
