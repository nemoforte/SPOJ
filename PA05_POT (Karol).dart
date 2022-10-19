import 'dart:io';

/* main() {

 String? input = stdin.readLineSync();

  if (input != null) {

    int tests = int.parse(input);

    while (tests-- > 0) {

      input = stdin.readLineSync();

      if (input != null) {

        int b = int.parse(input);

        input = stdin.readLineSync()

      }

      

    }

  }

}*/

main() {
  int tests = int.parse(stdin.readLineSync());

  while (tests-- > 0) {
    String input = stdin.readLineSync();
    List inputS = input.split(" ");
    int a = int.parse(inputS[0]) % 10;
    int b = int.parse(inputS[1]);
    // int a = int.parse(stdin.readLineSync()) % 10;

    // int b = int.parse(stdin.readLineSync());

    List<int> tab = [0, 0, 0, 0, 1, 1, 1, 1, 2, 4, 8, 6, 3, 9, 7, 1, 4, 6, 4, 6, 5, 5, 5, 5, 6, 6, 6, 6, 7, 9, 3, 1, 8, 4, 2, 6, 9, 1, 9, 1];

    if (b == 0) {
      print(1);
      continue;
    }

    print(tab[(4 * a + ((b - 1) % 4))]);
  }
}
