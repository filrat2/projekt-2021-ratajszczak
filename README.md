<b>Projekt 2021<br>
Przedmiot: Wstęp do programowania <br>

Temat: Operacje na walutach i kursach. </b><br>

Nasza praca projektowa to zbiór trzech funkcji, które związane są ściśle z wymianą walut oraz porównywaniem kursów walut. Dane dotyczące nazw walut oraz ich średnich kursów w polskiej złotówce pobierane są bezpośrednio ze strony Narodowego Banku Polskiego (https://www.nbp.pl/kursy/kursya.html) i za pomocą funkcji "czyszczenie" są przenoszone do ramki danych "kursy", która jest podstawą do wszystkich następncyh działań. 

<b>Wymagania</b>

Do poprawnego działania poniższego zbioru funkcji wymagane są pakiety "rvest" oraz "stringr". Jeśli nie posiadasz tych pakietów, zainstaluj je na początku poprzez wpisanie komendy 
          
      install.packages("rvest")
      install.packages("stringr")

<b>Funkcje:</b>

- <b>funkcja "kupno(x, y)"</b> - funkcja służąca do przeliczania przychodu, jaki otrzymamy po sprzedaży wprowadzonej do funkcji ilości sprzedawanej waluty (argument x) oraz waluty którą chcemy sprzedać (argument y). Jako rezultat użytkownik dostaje komunikat oraz powstaje nowy obiekt "buy", który jest obiektem numerycznym i może zostać wykorzystany do kolejnych obliczeń.  <br>

      kupno(x, y)
      
      x - wartość liczbowa
      Ilość waluty, jaką chcesz sprzedać w kantorze.
      
      y - międzynarodowy symbol sprzedawanej waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykład:
          
      kupno(130, EUR)
      
      #> Jeśli sprzedasz 130 EUR , otrzymasz 591.25 zł.
      
- <b>funkcja "sprzedaz(x, y)"</b> - funkcja służąca do przeliczania ceny zakupu wybranej ilości waluty, którą chcemy zakupić. Jako rezultat użytkownik dostaje komunikat oraz powstaje nowy obiekt "sell", który jest obiektem numerycznym i może zostać wykorzystany do kolejnych obliczeń. <br>

      sprzedaz(x, y)
      
      x - wartość liczbowa
      Ilość waluty, jaką chcesz zakupić.
      
      y -  międzynarodowy symbol kupowanej waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykład:  
          
      sprzedaz(130, EUR) 
      
      #> Za 130 zł możesz kupić 28.58 EUR.
      
- <b>funkcja "porownanie(x, y)"</b> - funkcja służąca do porównywania aktualnych kursów pomiędzy różnymi walutami. <br>
      
      porownanie(x, y)
      
      x - międzynarodowy symbol pierwszej wybranej do porównania waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      y - międzynarodowy symbol drugiej wybranej do porównania waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykłady:
      
      porownanie(USD, USD) 
          
      porownanie(PLN, USD)
          
      porownanie(USD, PLN)

<b>Wbudowane obiekty:</b><br>

- <b>obiekt "kursy"</b> - ramka danych (<i>ang. data frame</i>) zawierająca trzy kolumny:<br>
  - symbol_waluty,<br>
  - kurs_waluty,<br>
  - nazwa_waluty.<br>
  
W tym obiekcie znajdziemy tablicę zawierającą wszystkie waluty oraz ich kursy, z których można korzystać w naszej pracy projektowej.<br>

Ta ramka danych korzysta z danych, zawartych w pliku "kursy.xlsx". Gdy zaktualizujemy dane w pliku "kursy.xlsx" musimy ponownie załadować wybraną linię kodu w skrypcie R za pomocą skrótu klawiszowego Ctrl+Enter. Ta operacja pozwoli na zaktualizowanie danych w obiekcie "kursy" do aktualnych danych zawartych w pliku "kursy.xlsx". <br>

Funkcje zawarte w naszej pracy projektowej korzystają z danych zawartych w tym obiekcie, więc warto aktualizować dane w pliku "kursy.xlsx" oraz obiekcie "kursy" przynajmniej raz dziennie. <br>

    kursy
    
    #>                        nazwa_waluty kod_waluty kurs_waluty
    1                      bat (Tajlandia)      1 THB      0.1214
    2                    dolar amerykański      1 USD      3.7978
    3                   dolar australijski      1 AUD      2.9397
    4                      dolar Hongkongu      1 HKD      0.4889
    5                     dolar kanadyjski      1 CAD      3.0341
    6                  dolar nowozelandzki      1 NZD      2.7193
    7                    dolar singapurski      1 SGD      2.8469
    8                                 euro      1 EUR      4.5481
    9                       forint (Węgry)    100 HUF      1.2604
    10                   frank szwajcarski      1 CHF      4.1279
    # ... with 25 more rows
      
- <b>obiekt "kraje"</b> - obiekt tekstowy, zawierający informację o państwach, których waluty znajdziesz w naszym zbiorze funkcji.  Użyj tego obiektu, jeśli chcesz sprawdzić czy interesujące Cię państwo (jego waluta) jest obsługiwana przez nasz zbiór funkcji. <br>
      
      kraje
    
      #>  [1] "Obsługiwane przez nasz zbiór funkcji państwa to: ..."

- <b>obiekt "waluty"</b> - obiekt tekstowy, zawierający informację o walutach obsługiwanych przez nasz zbiór funkcji. Użyj tego obiektu, jeśli chcesz sprawidzić czy nasz zbiór funkcji obsługuję interesującą Cię walutę. Alternatywnie możesz to sprawdzić w obiekcie "kursy". <br>

      waluty
      
      #> [1] "Obsługiwane przez nasz zbiór funkcji waluty to: ..."

- <b>obiekty kursów</b> - obiekty liczbowe, zawierające przypisanie aktualnego kursu danej waluty do jego międzynarodowego symbolu. <br>

      Przykłady:
      
      USD 
      
      #> [1] 3.8365
      
      EUR
      
      #> [1] 4.5581

- <b>obiekty państw</b> - obiekty typu ramka danych (<i>ang. data frame</i>), zawierające informację o nazwie oficjalnej waluty wybranego państwa, symbolu międzynarodowym tej waluty oraz jej obecnym kursie. <br>

      Przykłady:
      
      StanyZjednoczone
      
      #>    nazwa_waluty kod_waluty kurs_waluty
      2 dolar amerykański     1 USD      3.7978
      
      Niemcy
      
      #>  nazwa_waluty kod_waluty kurs_waluty
      8         euro        1 EUR      4.5481

<b>Autorzy: </b><br>
Arkadiusz Młyńczak, <br>
Filip Ratajszczak, <br>
Jan Malak <br>
