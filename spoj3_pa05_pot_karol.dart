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
  int tests = int.parse(stdin.readLineSync());

  while (tests-- > 0) {
    String input = stdin.readLineSync();
    List<String> inputS = input.split(' ');
    int a = int.parse(inputS[0]) % 10;
    int b = int.parse(inputS[1]);

    List<int> tab = [0, 0, 0, 0, 1, 1, 1, 1, 2, 4, 8, 6, 3, 9, 7, 1, 4, 6, 4, 6, 5, 5, 5, 5, 6, 6, 6, 6, 7, 9, 3, 1, 8, 4, 2, 6, 9, 1, 9, 1];

    if (b == 0) {
      print(1);
      continue;
    }

    print(tab[(4 * a + ((b - 1) % 4))]);
  }
}
