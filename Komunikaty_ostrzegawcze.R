sym_wal = data.frame(x = cbind(c("PLN, USD, AUD, HKD, CAD, NZD, SGD, EUR, HUF, CHF, GBP, UAH, JPY, CZK, DKK, ISK, NOK, SEK, HRK, RON, BGN, TRY, ILS, CLP, PHP, MXN, ZAR, BRL, MYR, IDR, INR, KRW, CNY, XDR")),
                     y = cbind(c("PLN, USD, AUD, HKD, CAD, NZD, SGD, EUR, HUF, CHF, GBP, UAH, JPY, CZK, DKK, ISK, NOK, SEK, HRK, RON, BGN, TRY, ILS, CLP, PHP, MXN, ZAR, BRL, MYR, IDR, INR, KRW, CNY, XDR")))
sym_wal


currency = structure(sym_wal, class = "waluta")
currency


kalkulator_walut = function(x, y){
  vals = c(x, y)
  
  if (is.numeric(vals)){
  stop("ERROR! | Wszystkie argumenty muszą zawierać znaki.")
  
  }

  if (!all(c(length(x), length(y)) == 1)){
  stop("ERROR! | Każdemu argumentowi przypisane jest tylko jedna wartość.")

  }     
  
  if ((c(x[1], y[1]) == c(x[2], y[2]))){
  stop("ERROR! | Argumenty nie mogą się powtarzać.")
  
  }
  
  sym_wal = data.frame(x, y)
  structure(sym_wal, class = "waluta" )
  
}

kalkulator_walut(HRK, EUR)



#__________________________________________________

   
#FUNKCJA_SEGREGACJI_WALUT


cena_waluty = data.frame(USD, AUD, HKD, CAD, NZD, SGD, EUR, HUF, CHF, GBP, UAH, JPY, CZK, DKK, ISK, NOK, SEK, HRK, RON, BGN, TRY, ILS, CLP, PHP, MXN, ZAR, BRL, MYR, IDR, INR, KRW, CNY, XDR)
cena_waluty

seg_walut = function(cena_waluty){

  (cena_waluty)
  
}    
    
seg_walut(cena_waluty > 4)
  
  

