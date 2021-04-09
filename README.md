<b>Projekt 2021<br>
Przedmiot: Wstęp do programowania <br>

Temat: Operacje na walutach i kursach. </b><br>

Nasza praca projetkowa to zbiór trzech funkcji, które związane są ściśle z wymianą walut oraz porównywaniem kursów walut. 

<b>Funkcje:</b>

- <b>funkcja "kupno(x, y)"</b> - <br>

      <b>x</b> - wartość liczbowa.<br>
      Ilość waluty, jaką chcesz sprzedać w kantorze.<br>
      
      <b>y</b> - międzynarodowy symbol sprzedawanej waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykład:
          
      kupno(130, EUR)

- <b>funkcja "sprzedaz(x, y)"</b> - <br>

      <b>x</b> - wartość liczbowa<br>
      Ilość waluty, jaką chcesz zakupić.
      
      <b>y</b> -  międzynarodowy symbol kupowanej waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      Przykład:  
          
      sprzedaz(130, EUR) 

- <b>funkcja "porownanie(x, y)"</b> - <br><br>
      
      <b>x</b> - międzynarodowy symbol pierwszej wybranej do porównania waluty
      Dostępne waluty oraz ich symbole sprawdzisz w obiekcie "kursy" lub "waluty".
      
      <b>y</b> - międzynarodowy symbol drugiej wybraniej do porównaia waluty
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
  
W tym obiekcie znajdziemy tablicę zawierającą wszyskie waluty oraz ich kursy, z których można korzystać w naszej pracy projektowej.<br>

Ta ramka danych korzysta z danych, zawartych w pliku "kursy.xlsx". Gdy zaktualizujemy dane w pliku "kursy.xlsx" musimy ponownie załadować wybraną linię kodu w skrypcie R za pomocą skrótu klawiszowego Ctrl+Enter. Ta operacja pozwoli na zaktualizowanie danych w obiekcie "kursy" do aktualnych danych zawartych w pliku "kursy.xlsx". <br>

Funkcje zawarte w naszej pracy projektowej korzystają z danych zawartych w tym obiektcie, więc warto aktualizować dane w pliku "kursy.xlsx" oraz obiekcie "kursy" przynajmiej raz dziennie. <br>

- <b>obiekt "kraje"</b> - obiekt tekstowy, zawierający informację o państwach, których waluty znajdziesz w naszym zbiorze funkcji.  Użyj tego obiektu, jeśli chcesz sprawdzić czy interesujące Cię państwo (jego waluta) jest obsługiwana przez nasz zbiór funkcji. <br>

- <b>obiekt "waluty"</b> - obiekt tekstowy, zawierający informację o walutach obsługiwanych przez nasz zbiór funkcji. Użyj tego obiektu, jeśli chcesz sprawidzć czy nasz zbiór funkcji obsługuję interesującą Cię walutę. Alternatywnie możesz to sprawdzić w obiekcie "kursy". <br>

- <b>obiekty kursów</b> - obiekty liczbowe, zawierające przypisanie aktualnego kursu danej waluty do jego międzynarodowego symbolu. <br>

- <b>obiekty państw</b> - obiekty typu ramka danych (<i>ang. data frame</i>), zawierające informację o nazwie oficjalnej waluty wybranego państwa, symbolu międzynarodowym tej waluty oraz jej obecnym kursie. <br>

<b>Autorzy: </b><br>
Arkadiusz Młyńczak, <br>
Filip Ratajszczak, <br>
Jan Malak <br>





