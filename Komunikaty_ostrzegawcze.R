sym_wal = data.frame(x = (c("PLN, USD, AUD, HKD, CAD, NZD, SGD, EUR, HUF, CHF, GBP, UAH, JPY, CZK, DKK, ISK, NOK, SEK, HRK, RON, BGN, TRY, ILS, CLP, PHP, MXN, ZAR, BRL, MYR, IDR, INR, KRW, CNY, XDR")),
                     y = (c("PLN, USD, AUD, HKD, CAD, NZD, SGD, EUR, HUF, CHF, GBP, UAH, JPY, CZK, DKK, ISK, NOK, SEK, HRK, RON, BGN, TRY, ILS, CLP, PHP, MXN, ZAR, BRL, MYR, IDR, INR, KRW, CNY, XDR")))
sym_wal


currency = structure(sym_wal, class = "waluta")
currency


kalkulator_walut = function(x, y){
  vals = c(x, y)
  
  if (is.numeric(vals)){
  stop("ERROR | Wszystkie argumenty muszą zawierać znaki!")
  
  }

  if (!all(c(length(x), length(y)) == 3)){
  stop("ERROR! | Każdemu argumentowi przypisane są tylko trzy wartości.")


  }     
}


  
  
  
  

