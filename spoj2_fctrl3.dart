/*
FCTRL3 - Dwie cyfry silni
Zadanie: Silnia
Niech n będzie nieujemną liczbą całkowitą. Liczbę n! (czytaj n-silnia) definiuje się następująco. Jeśli n ≤ 1, to n! = 1. Dla n > 1, n! jest równe iloczynowi wszystkich liczb od 1 do n, czyli n! = 1 * 2 * ... * n. Na przykład 4! = 1*2*3*4 = 24.

Zadanie
Napisz program, który:
wczyta ze standardowego wejścia nieujemną liczbę całkowitą n,
policzy cyfrę dziesiatek oraz cyfrę jedności w zapisie dziesiętnym liczby n!,
wypisze wynik na standardowe wyjście.
Wejście
W pierwszej linii wejścia znajduje się jedna liczba całkowia D (1≤D≤30), oznaczjąca liczbę przypadków do rozważenia. Opis każdego przypadku składa się z jednej linii, w której znajduje się jedna nieujemna liczba całkowita n (0 ≤ n ≤ 1 000 000 000).

Wyjście
Dla każdego przypadku z wejścia. Twój program powinien wypisać w osobnej linii dokładnie dwie cyfry (oddzielone pojedynczą spacją): cyfrę dziesiątek i cyfrę jedności liczby n! zapisanej w systemie dziesiętnym.

Przykład
Dla danych wejściowych:
2
1
4
poprawną odpowiedzią jest:
0 1
2 4
*/

import 'dart:io';

void main() {
  int D = int.parse(stdin.readLineSync());
  for (int i = 0; i < D; i++) {
    int n = int.parse(stdin.readLineSync());
    if (n > 10) {
      print('0 0');
    } else if (n < 2) {
      print('0 1');
    } else {
      int w = 1;
      for (int j = 2; j <= n; j++) {
        w *= j;
      }

      int s = w % 10;
      int t = (w ~/ 10) % 10;
      print('$t $s');
    }
  }
}
