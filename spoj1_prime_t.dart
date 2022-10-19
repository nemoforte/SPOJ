/*
PRIME_T - Liczby Pierwsze
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
NIE
*/

import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  String result;
  for (int i = 0; i < n; i++) {
    int R = int.parse(stdin.readLineSync());
    result = iffirst(R) == true ? 'TAK' : 'NIE';
    print(result);
  }
}

dynamic iffirst(int v) {
  if (v == 1) {
    return false;
  }

  for (int i = 2; i < (v / 2) + 1; i++) {
    if (v % i == 0) {
      return false;
    }
  }
  return true;
}
