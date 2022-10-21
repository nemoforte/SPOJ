/*
FANGEN - Wiatraczki
Wiatraczek (lewo- lub prawoskrętny) rzędu n >= 1 jest macierzą znaków o rozmiarze 2n x 2n. Każdy element wiatraczka jest albo kropką ('.'), albo gwiazdką ('*'). Wiatraczki definiujemy rekurencyjnie:
 
Wszystkie (cztery) elementy wiatraczka rzędu 1 są gwiazdkami, niezależnie od jego skrętności:
**
**
Dla n ≥ 1, wiatraczek rzędu n + 1 konstruujemy następująco (przykłady ilustrują kolejne kroki konstruowania lewo- i prawoskrętnego wiatraczka o rozmiarze 2, '?' - znak do ustalenia):
 
W macierz wklejamy wycentrowany w pionie i w poziomie wiatraczek rzędu n o tej samej skrętności:
????    ????
?**?    ?**?
?**?    ?**?
????    ????
We wszystkie narożniki nowego wiatraczka wstawiamy gwiazdki:
*??*    *??*
?**?    ?**?
?**?    ?**?
*??*    *??*
Odwiedzamy kolejno wszystkie nie ustalone jeszcze znaki (jest ich dokładnie 8n), startując z dowolnego narożnika i poruszając się wzdłuż brzegu macierzy. Jeśli konstruujemy wiatraczek prawoskrętny, poruszamy się zgodnie z ruchem wskazówek zegara; jeśli lewoskrętny - przeciwnie. Wzdłuż każdej mijanej krawędzi stawiamy n kolejnych gwiazdek, a następnie n kolejnych kropek:
*.**    **.*
***.    .***
.***    ***.
**.*    *.**
Twój program powinien wcztywać kolejne liczby całkowite. Dla każdej wczytanej liczby r:
 
jeśli r > 0, generujemy wiatraczek lewoskrętny rzędu r, a następnie pusty wiersz,
jeśli r < 0, generujemy wiatraczek prawoskrętny rzędu -r, a następnie pusty wiersz,
r = 0 oznacza koniec wejścia, program powinien się zakończyć (wczytanego zera nie przetwarzamy).
Wejście
r1 [ -200 ≤ r1 ≤ 200, r1 <> 0; pierwsza liczba do przetworzenia ]
...
ri [ jw.; i-ta liczba do przetworzenia ]
0
 
[ można założyć, że przynajmniej pierwsza wartość będzie niezerowa, tj. że i ≥ 1 ]
 
Wyjście
[ wiatraczek wygenerowany dla r1 - dokładnie 2|r1| wierszy tekstu, w każdym wierszu dokładnie 2|r1| znaków (nie licząc '\n') ]
[ pusty wiersz ]
...
[ wiatraczek wygenerowany dla ri ]
[ pusty wiersz ]
 
Przykład
Wejście:
3
-4
0
 
Wyjście:
*..***
**.**.
****..
..****
.**.**
***..*
 
****...*
.***..**
..**.***
...*****
*****...
***.**..
**..***.
*...****
*/

import 'dart:io';

void main() {
  String sign;

  int r = int.parse(stdin.readLineSync());

  while (r != 0) {
    if (r > 0) {
      sign = '+';
    } else {
      sign = '-';
    }

    r = r.abs();

    List<List<String>> table = windmill(r, sign);

    for (int i = 0; i <= (2 * r) - 2; i++) {
      print(table[i].join(' '));
    }

    print('${table[(2 * r) - 1].join(' ')}\n');

    r = int.parse(stdin.readLineSync());
  }
}

List<List<String>> windmill(int a, String s) {
  if (a == 1) {
    List<List<String>> w = List<List<String>>.generate(2 * a, (int i) => List<String>.generate(2 * a, (int j) => '*'));

    return w;
  } else if (a > 1 && s == '+') {
    List<List<String>> w = List<List<String>>.generate(2 * a, (int i) => List<String>.generate(2 * a, (int j) => '*'));

    List<List<String>> m = windmill(a - 1, s);

    for (int y = 1; y <= (2 * a) - 2; y++) {
      for (int x = 1; x <= (2 * a) - 2; x++) {
        w[y][x] = m[y - 1][x - 1];
      }
    }

    for (int x = 1; x <= a - 1; x++) {
      w[0][x] = '.';
    }

    for (int y = (2 * a) - 2; y >= a; y--) {
      w[y][0] = '.';
    }

    for (int x = (2 * a) - 2; x >= a; x--) {
      w[(2 * a) - 1][x] = '.';
    }

    for (int y = 1; y <= a - 1; y++) {
      w[y][(2 * a) - 1] = '.';
    }

    return w;
  } else {
    List<List<String>> w = List<List<String>>.generate(2 * a, (int i) => List<String>.generate(2 * a, (int j) => '*'));

    List<List<String>> m = windmill(a - 1, s);

    for (int y = 1; y <= (2 * a) - 2; y++) {
      for (int x = 1; x <= (2 * a) - 2; x++) {
        w[y][x] = m[y - 1][x - 1];
      }
    }

    for (int x = a; x <= (2 * a) - 2; x++) {
      w[0][x] = '.';
    }

    for (int y = a - 1; y >= 1; y--) {
      w[y][0] = '.';
    }

    for (int x = a - 1; x >= 1; x--) {
      w[(2 * a) - 1][x] = '.';
    }

    for (int y = a; y <= (2 * a) - 2; y++) {
      w[y][(2 * a) - 1] = '.';
    }

    return w;
  }
}