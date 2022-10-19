/*
BFN1 - Zabawne Dodawanie Piotrusia
Piotruś w klasie na lekcji matematyki bardzo się nudził i pani postanowiła dać mu dodatkowe zadanie do rozwiązania. Piotruś otrzymał kartkę, na której napisane były małe liczby. Piotruś ma za zadanie stwierdzić, czy dana liczba jest palindromem (tzn. czy czyta się ją tak samo od lewej do prawej strony, jak od prawej do lewej). Jeżeli nie, Piotruś powinien dodać do siebie wartość liczby czytanej od lewej do prawej oraz wartość liczby czytanej od prawej do lewej, sprawdzić, czy suma jest palindromem, i jeżeli nie -- kontynuować proces, aż otrzyma palindrom.
 
Przykładowo, mając daną liczbę 28, Piotruś stwierdzi, że nie jest ona palindromem i wykona dodawanie 28 + 82 = 110. Liczba 110 wciąż nie jest palindromem, zatem Piotruś wykona jeszcze dodawanie 110 + 011 = 110 + 11 = 121. Wynik tego dodawania jest już palindromem, więc obliczenia zostaną zakończone.
 
Twoim zadaniem jest napisać program, który dla każdej liczby rozważanej przez Piotrusia wypisze palindrom (wynik obliczeń Piotrusia), oraz liczbę dodawań prowadzących do wyniku.
 
Wejście
Pierwsza linia wejścia zawiera liczbę t (t <= 80), określającą ile liczb znajduje się na kartce Piotrusia. Każda z następnych t linii zawiera dokładnie jedną liczbę naturalną n (1 <= n <= 80), dla której Piotruś musi wykonać obliczenia.
 
Wyjście
Dla kolejnych liczb podanych na kartce wypisz po jednej linijce zawierającej dwie liczby całkowite oddzielone spacją. Pierwsza oznacza palindrom otrzymany przez Piotrusia, druga -- liczbę dodawań wykonanych, by go otrzymać.
 
Przykład
Wejście:
3
28
68
5
 
Wyjście:
121 2
1111 3
5 0
*/
 
import "dart:io";
 
main() {
 
	int t = int.parse(stdin.readLineSync());

	for (int i = 0; i < t; i++) {
		int c = 0;
		String lr = stdin.readLineSync();
		String rl = '';

		for (int j = lr.length-1; j >= 0 ; j--) {
			rl += lr[j]; 
		}

		while (rl != lr) {
			c++;
			int sum = int.parse(lr) + int.parse(rl);
			lr = sum.toString();
			rl = '';

				for (int j = lr.length-1; j >= 0 ; j--) {
				rl += lr[j];
				}
        
		}
	print(rl+' '+'$c');
	}
}