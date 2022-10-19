/*
PP0502B - Tablice
Odwróć kolejność elementów w tablicy.
 
Wejście
Najpierw liczba testów t (t ≤ 100). Następnie dla każdego testu liczba n (n ≤ 100) i n liczb oddzielonych spacjami.
 
Wyjście
Dla każdego testu n liczb w porządku odwrotnym niż na wejściu.
 
Przykład
Wejście:
2
7 1 2 3 4 5 6 7
3 3 2 11
 
Wyjście:
7 6 5 4 3 2 1
11 2 3
*/
 
import "dart:io";
 
main() {
 
	int t = int.parse(stdin.readLineSync());
	for (int i = 0; i < t; i++) {
		String input = stdin.readLineSync();
		List list1 = input.split(" ");
		List list2 = [];
    	for (int j = int.parse(list1[0]); j >= 1 ; j--) {
    		list2.add(list1[j]);
    	}
		print(list2.join(' '));
	}
}