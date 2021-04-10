<b>Projekt 2021<br>
Przedmiot: Wstęp do programowania <br>

Temat: Operacje na walutach i kursach. </b><br>

Nasza praca projektowa to zbiór trzech funkcji, które związane są ściśle z wymianą walut oraz porównywaniem kursów walut. Dane dotyczące nazw walut oraz ich średnich kursów w polskiej złotówce pobierane są bezpośrednio ze strony Narodowego Banku Polskiego (https://www.nbp.pl/kursy/kursya.html) jako plik kursy.xlsx. Do pozyskania najbardziej aktualnych danych należy odświeżyć je poprzez otwarcie pliku w programie Microsoft Excel i kliknięcie komendy "odśwież", która wyświetli się po kliknięciu prawego przycisku myszki na arkusz kalkulacyjny. 


<b>Funkcje:</b>

- <b>funkcja "kupno(x, y)"</b> - funkcja służąca do przeliczania przychodu, jaki otrzymamy po sprzedaży wprowadzonej do funkcji ilości sprzedawanej waluty (argument x) oraz waluty którą chcemy sprzedać (argument y).  <br>

      kupno(x, y)
      
      x - wartość liczbowa
      Ilość waluty, jaką chcesz sprzedać w kantorze.
      
      y - międzynarodowy symbol sprzedawanej waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykład:
          
      kupno(130, EUR)

- <b>funkcja "sprzedaz(x, y)"</b> - funkcja służąca do przeliczania ceny zakupu wybranej ilości waluty, którą chcemy zakupić. <br>

      sprzedaz(x, y)
      
      x - wartość liczbowa
      Ilość waluty, jaką chcesz zakupić.
      
      y -  międzynarodowy symbol kupowanej waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykład:  
          
      sprzedaz(130, EUR) 

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
    
      #>                        nazwa_waluty symbol_waluty kurs_waluty
      1                      bat (Tajlandia)           THB  0.12200000
      2                    dolar amerykański           USD  3.83650000
      3                   dolar australijski           AUD  2.92680000
      4                      dolar Hongkongu           HKD  0.49300000
      5                     dolar kanadyjski           CAD  3.04070000
      6                  dolar nowozelandzki           NZD  2.69540000
      7                    dolar singapurski           SGD  2.86150000
      8                                 euro           EUR  4.55810000
      9                       forint (Węgry)           HUF  0.01270600
      10                   frank szwajcarski           CHF  4.13530000
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
      
      #>    nazwa_waluty symbol_waluty kurs_waluty
      2 dolar amerykański           USD      3.8365
      
      Niemcy
      
      #>  nazwa_waluty symbol_waluty kurs_waluty
      8         euro           EUR      4.5581

<b>Autorzy: </b><br>
Arkadiusz Młyńczak, <br>
Filip Ratajszczak, <br>
Jan Malak <br>





