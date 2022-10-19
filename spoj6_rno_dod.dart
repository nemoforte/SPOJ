/*
RNO_DOD - Proste dodawanie
Twoim zadaniem jest dodać wszystkie liczby całkowite podane na wejściu.
 
Wejście
W pierwszym wierszu znajduje się liczba t testów (0 < t < 100) Każdy test opisany jest w następujący sposób. W pierwszym wierszu dana jest liczba n - liczba liczb do zsumowania. Następnie podanych jest n liczb pooddzielanych spacją.
 
Przykład
Input:
2
5
1 2 3 4 5
2
-100 100
 
Output:
15
0
*/
 
import 'dart:io';
 
void main() {
 
   int t = int.parse(stdin.readLineSync());
   for (int i = 0; i < t; i++) {
 
   		int r = 0;
    	int n = int.parse(stdin.readLineSync());
    	String k = stdin.readLineSync();
    	List<String> input = k.split(' ');
    	for (int j = 0; j < n; j++) {
    		r += int.parse(input[j]);
    	}
    print(r);
   }
}