<b>Projekt 2021<br>
Przedmiot: Wstęp do programowania <br><br>

Temat: Operacje na walutach i kursach. </b><br><br>

Nasza praca projetkowa to zbiór trzech funkcji, które związane są ściśle z wymianą walut oraz porównywaniem kursów walut. 

<b>Funkcje:</b>

- <b>funkcja "kupno"</b> - <br><br>

- <b>funkcja "sprzedaz"</b> - <br><br>

- <b>funkcja "porownanie"</b> - <br><br><br>

<b>Wbudowane obiekty:</b><br><br>

- <b>obiekt "kursy"</b> - ramka danych (<i>ang. data frame</i>) zawierająca trzy kolumny:<br>
  - symbol_waluty,<br>
  - kurs_waluty,<br>
  - nazwa_waluty.<br><br>
  
W tym obiekcie znajdziemy tablicę zawierającą wszyskie waluty oraz ich kursy, z których można korzystać w naszej pracy projektowej.<br><br>

Ta ramka danych korzysta z danych, zawartych w pliku "kursy.xlsx". Gdy zaktualizujemy dane w pliku "kursy.xlsx" musimy ponownie załadować wybraną linię kodu w skrypcie R za pomocą skrótu klawiszowego Ctrl+Enter. Ta operacja pozwoli na zaktualizowanie danych w obiekcie "kursy" do aktualnych danych zawartych w pliku "kursy.xlsx". <br><br> 

Funkcje zawarte w naszej pracy projektowej korzystają z danych zawartych w tym obiektcie, więc warto aktualizować dane w pliku "kursy.xlsx" oraz obiekcie "kursy" przynajmiej raz dziennie. <br><br>

- <b>obiekt "kraje"</b> - obiekt tekstowy, zawierający informację o państwach, których waluty znajdziesz w naszym zbiorze funkcji.  Użyj tego obiektu, jeśli chcesz sprawdzić czy interesujące Cię państwo (jego waluta) jest obsługiwana przez nasz zbióR funkcji. <br><br>

- <b>obiekt "waluty"</b> - obiekt tekstowy, zawierający informację o walutach obsługiwanych przez nasz zbiór funkcji. Użyj tego obiektu, jeśli chcesz sprawidzć czy nasz zbiór funkcji obsługuję interesującą Cię walutę. Alternatywnie możesz to sprawdzić w obiekcie "kursy". <br><br>

- <b>obiekty kursów</b> - obiekty liczbowe, zawierające przypisanie aktualnego kursu danej waluty do jego międzynarodowego symbolu. <br><br>

- <b>obiekty państw</b> - obiekty typu ramka danych (<i>ang. data frame</i>), zawierające informację o nazwie oficjalnej waluty wybranego państwa, symbolu międzynarodowym tej waluty oraz jej obecnym kursie. <br><br>

<b>Autorzy: </b><br>
Arkadiusz Młyńczak, <br>
Filip Ratajszczak, <br>
Jan Malak <br>


