#Jeśli nie posiadasz zainstalowanego pakietu "readxl" zrób to na początku poprzez usunięcie znaku "#" w następnym wierszu oraz wykonanie wybranej linii kodu w skrypcie R za pomocą skrótu klawiszowego Ctrl+Enter.

#install.packages("readxl")

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
kursy[3,]

#OBIEKTY

  #obiekty kursów
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

  #obiekty państw

Tajlandia = kursy[1,]  
StanyZjednoczone = kursy[2,]
Australia = kursy[3,]
Hongkong = kursy[4,]
Kanada = kursy[5,]
NowaZelandia = kursy[6,]
Singapur = kursy[7,]
Niemcy = kursy[8,]
Hiszpania = kursy[8,]
Slowacja = kursy[8,]
Wlochy = kursy[8,]
Francja = kursy[8,]
Finlandia = kursy[8,]
Czarnogora = kursy[8,]
Austria = kursy[8,]
Portugalia = kursy[8,]
Malta = kursy[8,]
Litwa = kursy[8,]
Estonia = kursy[8,]
Andora = kursy[8,]
Lotwa = kursy[8,]
Belgia = kursy[8,]
Cypr = kursy[8,]
Slowenia = kursy[8,]
Luksemburg = kursy[8,]
Holandia = kursy[8,]
Irlandia = kursy[8,]
Monako = kursy[8,]
SanMarino = kursy[8,]
Watykan = kursy[8,]
Grecja = kursy[8,]
Wegry = kursy[9,]  
Szwajcaria =  kursy[10,]
WielkaBrytania =  kursy[11,]
Ukraina =  kursy[12,]
Japonia =  kursy[13,]
Czechy =  kursy[14,]
Dania =  kursy[15,]
Islandia =  kursy[16,]
Norwegia =  kursy[17,]
Szwecja =  kursy[18,]
Chorwacja =   kursy[19,]
Rumunia =  kursy[20,]
Bulgaria =  kursy[21,]
Turcja =  kursy[22,]
Izrael =  kursy[23,]
Chile =  kursy[24,]
Filipiny =  kursy[25,]
Meksyk = kursy[26,]
RPA =  kursy[27,]
Brazylia =  kursy[28,]
Malezja =  kursy[29,]
Rosja = kursy[30,]
Indonezja =  kursy[31,]
Indie =  kursy[32,]
KoreaPoludniowa =  kursy[33,]
Chiny = kursy[34,]
Polska = data.frame(nazwa_waluty = "polski złoty",
                    symbol_waluty = "PLN",
                    kurs_waluty = "1.00")

  #obiekt "kraje"

kraje = print("Obsługiwane przez nasz zbiór funkcji państwa to: Tajlandia, Stany Zjednoczone, Australia, Hongkong, Kanada, Nowa Zelandia, Singapur, Niemcy, Hiszpania, Słowacja, Włochy, Francja, Czarnogóra, Austria, Portugalia, Malta, Litwa, Estonia, Andora, Łotwa, Belgia, Cypr, Słowenia, Luksemburg, Holandia, Irlandia, Monako, San Marino, Watykan, Greja, Węgry, Szwajcaria, Wielka Brytania, Ukraina, Japonia, Czechy, Dania, Islandia, Norwegia, Szwecja, Chorwacja, Rumunia, Bułgaria, Turcja, Izrael, Chile, Filipiny, Meksyk, RPA, Brazylia, Malezja, Rosja, Indonezja, Indie, Korea Południowa, Chiny, Polska")

kraje 

  #obiekt "waluty"

waluty = print("Obsługiwane przez nasz zbiór funkcji waluty to: THB (bat (Tajlandia), USD (dolar amerykański), AUD (dolar australijski), HKD (dolar Hongkongu), CAD (dolar kanadyjski), NZD (dolar nowozelandzki), SGD (dolar singapurski), EUR (euro), HUF (forint (Węgry)), CHF (frank szwajcarski), GBP (funt szterling), UAH (hrywna (Ukraina)),JPY (jen (Japonia)), CZK (korona czeska), DKK (korona duńska), ISK (korona islandzka), NOK (korona norweska), SEK (korona szwedzka), HRK (kuna (Chorwacja)), RON (lej rumuński), BGN (lew (Bułgaria)), TRY (lira turecka), ILS (nowy izraelski szekel), CLP (peso chilijskie), PHP (peso filipińskie), MXN (peso meksykańskie), ZAR (rand (Republika Południowej Afryki)), BRL (real (Brazylia)), MYR (ringgit (Malezja)), RUB (rubel rosyjski), IDR (rupia indonezyjska), INR (rupia indyjska), KRW (won południowokoreański), CNY (yuan renminbi (Chiny)), XDR (SDR (MFW)), PLN (polski złoty nowy)")

waluty



#FUNKCJE


  #Funkcja kupno - kantor sprzedaje klientowi

sprzedaz = function(x, y){
  cat(paste("Za", x, "zł możesz kupić", round((x / y), digits =2),
            print(substitute(y)),"."))
}

          #przykład
          
          sprzedaz(130, EUR) 


       
  #Funkcja sprzedaz - kantor kupuje od klienta

kupno = function(x, y){
  cat(paste("Jeśli sprzedasz",x , print(substitute(y)) , ", otrzymasz",
            round((x * y), digits = 2), "zł."))
} 

          #przykład  
          
          kupno(130, EUR) 



  #Funkcja porownanie

porownanie = function(x, y){
  if (x > y){
    cat(paste("Kurs pierwszej wybranej waluty jest o", round((x-y), digits = 2),"zł wyższy niż kurs drugiej wybranej waluty."))
  } else if (x < y){
    cat(paste("Kurs pierwszej wybranej waluty jest o", round(abs(x-y), digits = 2),"zł niższy niż kurs drugiej wybranej waluty."))
  } else {
    cat(paste("Kursy tych walut są równe. Prawdopodobnie do porównania wybrałeś dwie takie same waluty."))
  }
}  

          #przykłady
          
          porownanie(USD, USD) 
          
          porownanie(PLN, USD)
          
          porownanie(USD, PLN)