/*
FLAMASTE - Flamaster
Autor: Michał Franczak
Flamaster
Kasia niedawno poznała wszystkie literki w szkole. Z wielką pasją potrafiła całe dnie spędzać na pisaniu długich słów swoim ulubionym flamastrem. Pisała i pisała "tasiemce" tak długo, aż flamaster wypisał się. Kasia posmutniała. Z trudem, ale udało jej się uprosić swoją mamę, aby kupiła jej nowy pisak. Musiała jednak obiecać, że tym razem będzie bardziej oszczędna przy jego używaniu żeby wystarczył na dłużej. Kasia zaczęła zastanawiać się w jaki sposób będzie mogła zrealizować obietnicę daną mamie.
 
Postanowiła, że aby zaoszczędzić wkład flamastra będzie wypisywała skróconą wersję wymyślanych wyrazów. Jeśli miała zamiar napisać więcej niż dwie takie same literki obok siebie w wyrazie, to teraz napisze literkę a następnie liczbę, określającą ilość wystąpień tej literki.
Zadanie
Twoim zadaniem jest dla zadanego wyrazu, który wymyśliła Kasia, podanie skróconej wersji tego wyrazu.
Wejście
W pierwszej linijce wejścia znajduje się liczba naturalna C, 1 ≤ C ≤ 50, oznaczająca ilość zestawów danych. W kolejnych C wierszach wejścia znajdują się zestawy danych. Każdy zestaw składa się z niepustego wyrazu złożonego z samych dużych liter alfabetu amerykańskiego. Długość wyrazu nie przekracza 200 znaków.
Wyjście
Dla każdego zestawu danych, dla zadanego wyrazu, na wyjściu powinna znaleźć się jego skrócona wersja.
Przykład
Dla danych wejściowych:
4
OPSS
ABCDEF
ABBCCCDDDDEEEEEFGGHIIJKKKL
AAAAAAAAAABBBBBBBBBBBBBBBB
prawidłowym rozwiązaniem jest:
OPSS
ABCDEF
ABBC3D4E5FGGHIIJK3L
A10B16
*/

import 'dart:io';

void main() {
  int C = int.parse(stdin.readLineSync());
  for (int k = 1; k <= C; k++) {
    String D = stdin.readLineSync();
    StringBuffer N = StringBuffer();
    if (D.length == 1) {
      N.write(D);
    } else {
      for (int i = 0; i <= D.length - 2; i++) {
        N.write(D[i]);

        if (D[i] == D[i + 1]) {
          int r = 1;

          for (int j = i + 1; j <= D.length - 1; j++) {
            if (D[i] == D[j]) {
              r += 1;
            }
          }

          N.write(r.toString());

          i += r - 1;
        }
      }

      if (D[D.length - 2] != D[D.length - 1]) {
        N.write(D[D.length - 1]);
      }
    }
    print(N);
  }
}
