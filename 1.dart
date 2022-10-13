/*PRIME_T - Liczby Pierwsze
Sprawdź, które spośród danych liczb są liczbami pierwszymi

Input
n - liczba testów n<100000, w kolejnych liniach n liczb z przedziału [1..10000]

Output
Dla każdej liczby słowo TAK, jeśli liczba ta jest pierwsza, słowo: NIE, w przeciwnym wypadku.

Example
Input:
3
11
1
4

Output:
TAK
NIE
NIE*/

import 'dart:io';

main() {
  int r = 0;
  stdout.writeln('podaj liczbe testow');
  String? g = stdin.readLineSync();
  if (g != null){

    int n = int.parse(g);
    
    for (int i = 1; i <= n; i++){

      stdout.writeln('sprawdz liczbe');
      String? k = stdin.readLineSync();
      if (k != null){

        int s = int.parse(k);

        if (s >= 1) {
          for (int j = s-1; j>1; j--){
            r = s % j;
            if (r == 0) {
              break;
            }
          }
          if (r == 0) {
            print('NIE');
          } else {
            print('TAK');
          }
        } else {
          print('NIE');
        }
      }
    }
  }
}