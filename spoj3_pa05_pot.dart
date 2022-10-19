/*
PA05_POT - Czy umiesz potęgować
Zadanie: POT (Czy umiesz potęgować)
Dla danych dwóch liczb naturalnych a i b, wyznaczyć ostatnią cyfrę liczby ab.

Zadanie
Napisz program, który:
wczyta ze standardowego wejścia: podstawę a oraz wykładnik b,
wyznaczy ostatnią cyfrę liczby ab,
wypisze wynik na standardowe wyjście.
Wejście
W pierwszej linii wejścia znajduje się jedna liczba całkowia D (1≤D≤10), oznaczjąca liczbę przypadków do rozważenia. Opis każdego przypadku podany jest w jednym wierszu, zawierającym dwie liczby naturalne a i b oddzielone pojedynczym odstępem (spacją), takie, że (1 ≤ a,b ≤ 1 000 000 000).

Wyjście
Dla każdego przypadku z wejścia Twój program powinien wypisać (w osobnej linii dla każdego przypadku z wejścia) cyfrę jedności liczby ab zapisanej dziesiętnie.

Przykład
Dla danych wejściowych:
2
2 3
3 3
poprawną odpowiedzią jest:
8
7
*/

import 'dart:io';

void main() {
  int D = int.parse(stdin.readLineSync());

  for (int i = 0; i < D; i++) {
    String input = stdin.readLineSync();
    List<String> inputS = input.split(' ');
    int base = int.parse(inputS[0]);
    int exp = int.parse(inputS[1]);
    base %= 10;
    if (exp > 0) {
      exp = exp % 4;

      if (exp == 0) {
        exp = 4;
      }

      int R = base;
      for (int j = 1; j < exp; j++) {
        R *= j;
      }

      R = R % 10;
      print(R);
    } else {
      print(1);
    }
  }
}
