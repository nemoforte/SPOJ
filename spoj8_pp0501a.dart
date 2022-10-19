/*PP0501A - NWD
Napisz funkcję:
 
 int nwd(int a, int b);
która oblicza największy wspólny dzielnik liczb a i b,
 
 0 <= a,b <= 1000000
Input
 
 
W pierwszej linii liczba testów t, w kolejnych liniach po dwie liczby w każdym wierszu.
 
Output
W każdej linii jedna liczba - wynik działania funkcji nwd
 
Example
Input:
5
1 4
4 1
12 48
48 100
123456 653421
 
Output:
1
1
12
4
3
*/
 
import 'dart:io';
 
void main() {
    int t = int.parse(stdin.readLineSync());
    for (int i = 0; i < t; i++) {
        String input = stdin.readLineSync();
        List<String> inputS = input.split(' ');
    	int n = int.parse(inputS[0]);
    	int m = int.parse(inputS[1]);
        int R = nwd(n, m);
  	    print(R);
    }
}
 
 int nwd(int a, int b) {
	int x;
    if (a < b) {
    	x = b;
    	b = a;
    	a = x;
    }
    while (a % b != 0) {
		x = b;
		b = a % b;
		a = x;
    }
    return b;
}