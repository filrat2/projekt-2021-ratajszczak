# Wykorzystanie funkcji "which" w celu segregacji wartości walut

# Dzięki tej funkcji użytkownik jest w stanie sprawdzić średni zakres wartości walut.

# seg_wal - skrót od segregacji walut 

seg_wal = data.frame(kursy[1], kursy[2], round((kursy[3]), digits = 4))
seg_wal

which(seg_wal$kurs_waluty > 1.00)

which(seg_wal$kurs_waluty < 1.00)

which(seg_wal$kurs_waluty > 2.00)

which(seg_wal$kurs_waluty > 3.00)

which(seg_wal$kurs_waluty > 4.00)

which(seg_wal$kurs_waluty > 5.00)

# W dalszym kroku użytkownik ma możliwość sprawdzenia aktualnego najwyższego i najniższego średniego kursu walut.  

wartosc_waluty = data.frame(THB, USD, AUD, HKD, CAD, NZD, SGD, EUR, HUF, CHF, GBP, UAH, JPY, CZK, DKK, ISK, NOK, SEK, HRK, RON, BGN, TRY, ILS, CLP, PHP, MXN, ZAR, BRL, MYR, RUB, IDR, INR, KRW, CNY, XDR)
wartosc_waluty

seg_wal

which.max(wartosc_waluty)

which.min(wartosc_waluty)

