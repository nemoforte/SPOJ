import 'dart:io';
 
main() {
 
	int r = int.parse(stdin.readLineSync());
 
	while (r != 0) {
 
		var x = List.generate(2, (i) => List.generate(2, (j) => '*'));
 
		print(x[0].join(' '));
		print(x[1].join(' '));
 
		r = int.parse(stdin.readLineSync());
 
	}
}