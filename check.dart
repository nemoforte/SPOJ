import 'dart:io';

void main() {
  Map<int, String> fucktorial = <int, String>{};
  fucktorial[2] = '0 2';
  fucktorial[3] = '0 6';
  fucktorial[4] = '2 4';
  fucktorial[5] = '2 0';
  fucktorial[6] = '2 0';
  fucktorial[7] = '4 0';
  fucktorial[8] = '2 0';
  fucktorial[9] = '8 0';

  int D = int.parse(stdin.readLineSync());
  for (int i = 0; i < D; i++) {
    int n = int.parse(stdin.readLineSync());
    if (n > 10) {
      print('0 0');
    } else if (n < 2) {
      print('0 1');
    } else {
      print(fucktorial[n]);
    }
  }
}
